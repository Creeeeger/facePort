.class public Lcom/samsung/android/settings/mde/MDESuggestionsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityResultListeners:Ljava/util/List;

.field public mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

.field public final mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;

    return-void
.end method

.method public static getShortcutIdNumber(Ljava/lang/String;)I
    .locals 3

    const-string v0, "MDESuggestionsSettings"

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NullPointerException. e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NumberFormatException. e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0
.end method


# virtual methods
.method public final createPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    const-string v0, "SecInsetCategoryPreference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionPreference;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070bcc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    return-object p1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x111d4

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701c2

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "onActivityResult : requestCode = "

    const-string v1, ", resultCode = "

    const-string v2, ", intent = "

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MDESuggestionsSettings"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0xa

    if-ge p1, p3, :cond_0

    const-string p3, "AS-0"

    goto :goto_0

    :cond_0
    const-string p3, "AS-"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mShortcutId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "id"

    invoke-static {p3, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    const/4 v0, -0x1

    const v1, 0x111d7

    const v2, 0x111d4

    if-ne p2, v0, :cond_4

    const-wide/16 v3, 0x1

    invoke-static {v2, v1, v3, v4, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    iget-object v1, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mShortcutId:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/settings/mde/MDESuggestionManager;->mDismissedSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Landroid/os/Bundle;)V

    const-wide/16 v0, 0x226

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    const-wide/16 p2, 0x0

    invoke-static {v2, v1, p2, p3, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "MDESuggestionsSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    new-instance v0, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroidx/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sInstance:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sInstance:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sInstance:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1020004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f142568

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->registerCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManagerCallback:Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->unregisterCallback(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;)V

    :cond_0
    return-void
.end method
