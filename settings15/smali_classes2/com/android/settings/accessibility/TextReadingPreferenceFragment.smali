.class public Lcom/android/settings/accessibility/TextReadingPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mEntryPoint:I

.field public mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

.field mNeedResetSettings:Z

.field public mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

.field mResetStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f170020

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    return-void
.end method


# virtual methods
.method public createDisplaySizeData(Landroid/content/Context;)Lcom/android/settings/accessibility/DisplaySizeData;
    .locals 0

    new-instance p0, Lcom/android/settings/accessibility/DisplaySizeData;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/DisplaySizeData;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "launched_from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "setupwizard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/android/settings/accessibility/FontSizeData;

    invoke-direct {v8, p1}, Lcom/android/settings/accessibility/PreviewSizeData;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const v4, 0x7f0300df

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/android/window/flags/Flags;->configurableFontScaleDefault()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    const-string v4, "device_font_scale"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    :cond_3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v8, Lcom/android/settings/accessibility/PreviewSizeData;->mDefaultValue:Ljava/lang/Number;

    const-string v4, "font_scale"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v9, 0x1

    move v6, v9

    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_5

    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v7, v5, v10, v5}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    sub-int/2addr v6, v9

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_3

    :cond_5
    array-length v3, v4

    add-int/lit8 v6, v3, -0x1

    :goto_4
    iput v6, v8, Lcom/android/settings/accessibility/PreviewSizeData;->mInitialIndex:I

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/FontSizeData$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v8, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->createDisplaySizeData(Landroid/content/Context;)Lcom/android/settings/accessibility/DisplaySizeData;

    move-result-object v10

    new-instance v2, Lcom/android/settings/accessibility/TextReadingPreviewController;

    const-string v3, "preview"

    invoke-direct {v2, p1, v3, v8, v10}, Lcom/android/settings/accessibility/TextReadingPreviewController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/FontSizeData;Lcom/android/settings/accessibility/DisplaySizeData;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    iget v3, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/TextReadingPreviewController;->setEntryPoint(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$1;

    const-string v5, "font_size"

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v6, v8

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;Landroid/content/Context;)V

    iget-object v2, v8, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    :goto_5
    if-ge v1, v2, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v8, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f140ff4

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v11, v3}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setProgressStateLabels([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {v11, v1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$2;

    const-string v2, "display_size"

    invoke-direct {v1, p0, p1, v2, v10}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    const-string v2, "toggle_force_bold_text"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    iget v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->setEntryPoint(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;

    const-string v2, "toggle_high_text_contrast_preference"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;->setEntryPoint(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/accessibility/TextReadingResetController;

    new-instance v2, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;)V

    const-string v3, "reset"

    invoke-direct {v1, p1, v3, v2}, Lcom/android/settings/accessibility/TextReadingResetController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, p1}, Lcom/android/settings/accessibility/TextReadingResetController;->setEntryPoint(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p0

    xor-int/2addr p0, v9

    invoke-virtual {v1, p0}, Lcom/android/settings/accessibility/TextReadingResetController;->setVisible(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x784

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getDialogMetricsCategory(I)I

    move-result p0

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TextReadingPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x778

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170020

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1401d1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    if-eqz p1, :cond_1

    const-string v0, "need_reset_settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    const-string v0, "last_preview_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreviewController;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1401cd

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f1401cb

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;)V

    const p0, 0x7f1401cc

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const p0, 0x7f1408bf

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported dialogId "

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    if-eqz v0, :cond_0

    const-string v0, "need_reset_settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mPreviewController:Lcom/android/settings/accessibility/TextReadingPreviewController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreviewController;->getCurrentItem()I

    move-result p0

    const-string v0, "last_preview_index"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
