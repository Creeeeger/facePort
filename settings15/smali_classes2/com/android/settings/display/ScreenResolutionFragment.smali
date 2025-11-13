.class public Lcom/android/settings/display/ScreenResolutionFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mDefaultDisplay:Landroid/view/Display;

.field public mDisplayObserver:Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

.field public mFullWidth:I

.field public mHighWidth:I

.field public mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

.field public mResolutions:Ljava/util/Set;

.field public mResources:Landroid/content/res/Resources;

.field public mScreenResolutionOptions:[Ljava/lang/String;

.field public mScreenResolutionSummaries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/display/ScreenResolutionFragment$1;

    const v1, 0x7f170131

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/ScreenResolutionFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenResolutionFragment;->updateIllustrationImage(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance p0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f142007

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v0, 0x7f0d051f

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V
    .locals 0

    check-cast p3, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;

    iget-object p0, p3, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionSummaries:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v2, v4, v2}, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getDisplayMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenResolutionFragment;->getKeyForResolution(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayMode()Landroid/view/Display$Mode;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getKeyForResolution(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mHighWidth:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mFullWidth:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x780

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170131

    return p0
.end method

.method public final getWidthForResoluitonKey(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mHighWidth:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mFullWidth:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDefaultDisplay:Landroid/view/Display;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0300af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

    new-instance v0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

    invoke-direct {v0, p1}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDisplayObserver:Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

    new-instance v0, Lcom/android/settings/display/ScreenResolutionController;

    const-string v1, "screen_resolution"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/display/ScreenResolutionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenResolutionController;->getAllSupportedResolutions()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResolutions:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenResolutionController;->getHighWidth()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mHighWidth:I

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenResolutionController;->getFullWidth()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mFullWidth:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mHighWidth:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mHighWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mFullWidth:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mFullWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScreenResolution"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mHighWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenResolutionController;->getHighHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mFullWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenResolutionController;->getFullHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionSummaries:[Ljava/lang/String;

    return-void
.end method

.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenResolutionFragment;->getWidthForResoluitonKey(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDisplayObserver:Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

    invoke-virtual {v1}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->getCurrentWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mPreviousWidth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->isResolutionChangeApplied()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mPreviousWidth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f14200d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->getWidthForResoluitonKey(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->setDisplayMode(I)V

    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->updateIllustrationImage(Lcom/android/settingslib/widget/IllustrationPreference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDisplayMode(I)V
    .locals 6

    const-string v0, "ScreenResolution"

    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResolutions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-ne v3, p1, :cond_0

    new-instance p1, Landroid/view/Display$Mode;

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getDisplayMode()Landroid/view/Display$Mode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-direct {p1, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getDisplayMode()Landroid/view/Display$Mode;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDisplayObserver:Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

    iget-object v2, v1, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/settingslib/display/DisplayDensityUtils;

    iget-object v3, v1, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    iget v3, v2, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    iget v4, v2, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensityForDefaultDisplay:I

    iget-object v2, v2, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDisplayDensityValues:[I

    iget v5, v1, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mCurrentIndex:I

    aget v2, v2, v5

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    iput v4, v1, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mDefaultDensity:I

    iput v3, v1, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mCurrentIndex:I

    iget-object v2, v1, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_selected_resolution"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserPreferredDisplayMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, p1}, Landroid/view/Display;->setUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    const/16 v1, 0x23c

    invoke-static {v1, p0, v0, p1}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIII)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "setUserPreferredDisplayMode() failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final updateIllustrationImage(Lcom/android/settingslib/widget/IllustrationPreference;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f08082b

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f08082a

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    :cond_1
    :goto_0
    return-void
.end method
