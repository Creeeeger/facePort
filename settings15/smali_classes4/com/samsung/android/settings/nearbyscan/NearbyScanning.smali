.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanning;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBadge:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field public mNearbyHelpImg:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

.field public mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field public mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mSwitchBarChildView:Landroid/view/View;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-void
.end method


# virtual methods
.method public final checkApkUpdateStatus()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "content://com.samsung.android.easysetup.provider.BadgeContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "is_update_available_method"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "key_is_update_available"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "NearbyScanning"

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const-string v1, "NearbyScanning"

    if-eqz v0, :cond_1

    const-string v0, "createNeaybyScanningView for Tablet"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0910

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const-string v0, "createNeaybyScanningView"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d090f

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const v0, 0x7f0a0d17

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setScrollBarStyle(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f060738

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->seslSetFillHorizontalPaddingEnabled(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const p2, 0x7f0a0a39

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const v2, 0x7f0a0031

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const p2, 0x7f0a0a38

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    const-string p2, "beacon_manager_help_dark.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    const-string p2, "beacon_manager_help_light.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    new-instance p2, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const p2, 0x7f0a0175

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->checkApkUpdateStatus()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe74

    return p0
.end method

.method public final isRemoveAnimationEnabled$2()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "remove_animations"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "NearbyScanning"

    const-string/jumbo v0, "onActivityCreated"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v0, :cond_3

    new-instance p1, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string/jumbo p0, "onActivityCreated.setLayoutOnClickForLogging Failed"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "NearbyScanning"

    const-string/jumbo v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->isRemoveAnimationEnabled$2()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->startAnimation$2()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NearbyScanning"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    const-string p1, "Not Installed BeaconManager"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v1, v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnCheckedChangeListener:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "NearbyScanning"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "NearbyScanning"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->checkApkUpdateStatus()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->isRemoveAnimationEnabled$2()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->startAnimation$2()V

    :cond_3
    return-void
.end method

.method public final startAnimation$2()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;->playAnimation$1()V

    :cond_0
    return-void
.end method
