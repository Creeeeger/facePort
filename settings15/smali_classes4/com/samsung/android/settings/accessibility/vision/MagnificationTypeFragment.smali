.class public Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final magnificationTypeDescriptionId:[I

.field public static final magnificationTypeRawId:[I


# instance fields
.field public final mAnimationAutoPlay:Z

.field public mAnimationLayout:Landroid/widget/LinearLayout;

.field public final mAnimationLoop:Z

.field public mAnimationRawResId:I

.field public mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mContentObserver:Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f13000c

    const v1, 0x7f13000a

    const v2, 0x7f13000b

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->magnificationTypeRawId:[I

    const v0, 0x7f1416bd

    const v1, 0x7f1416b9

    const v2, 0x7f1416bb

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->magnificationTypeDescriptionId:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationAutoPlay:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationLoop:Z

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mContentObserver:Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment$1;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xc6f

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700d1

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {v0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f150691

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f150682

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_magnification_capability"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mContentObserver:Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment$1;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string p2, "empty_category"

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    const-string v0, "magnification_type_description"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/base/widget/AnimatedDescriptionPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->setAnimationRawRes()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0b8e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0a00f1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->setAnimationRawRes()V

    return-object p1
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mContentObserver:Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final setAnimationRawRes()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/MagnificationCapabilities;->getCapabilities(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->magnificationTypeRawId:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    iput v1, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationRawResId:I

    sget-object v1, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->magnificationTypeDescriptionId:[I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationRawResId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationRawResId:I

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationLoop:Z

    if-eqz v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationAutoPlay:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/MagnificationTypeFragment;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_2
    return-void
.end method
