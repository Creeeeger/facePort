.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanning;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NearbyScanning.java"


# instance fields
.field private mBadge:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mNearbyHelpImg:Landroid/widget/ImageView;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mSwitchBarChildView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    return-void
.end method

.method private checkApkUpdateStatus()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "content://com.samsung.android.easysetup.provider.BadgeContentProvider"

    .line 192
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 196
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "is_update_available_method"

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "key_is_update_available"

    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 199
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 194
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

    .line 201
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NearbyScanning"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const-string v1, "NearbyScanning"

    if-eqz v0, :cond_1

    const-string v0, "createNeaybyScanningView for Tablet"

    .line 129
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget v0, Lcom/android/settings/R$layout;->sec_nearby_device_scanning_help_tablet:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const-string v0, "createNeaybyScanningView"

    .line 132
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget v0, Lcom/android/settings/R$layout;->sec_nearby_device_scanning_help:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 137
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->nearby_layout_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 143
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->about_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 153
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->nearby_help_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Landroid/widget/ImageView;

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 157
    new-instance p2, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->badge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->checkApkUpdateStatus()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 182
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mView:Landroid/view/View;

    return-object p0
.end method

.method private setLayoutOnClickForLogging()Z
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->getNearbyScanningSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 263
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 269
    new-instance v1, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xe74

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 223
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "NearbyScanning"

    const-string v0, "onActivityCreated"

    .line 224
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 226
    new-instance v1, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    .line 227
    invoke-virtual {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setLayoutOnClickForLogging()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "onActivityCreated.setLayoutOnClickForLogging Failed"

    .line 229
    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "NearbyScanning"

    const-string v0, "onConfigurationChanged"

    .line 210
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->startAnimation()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NearbyScanning"

    const-string v0, "onCreate"

    .line 109
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-static {v0, p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->setDBInt(Landroid/content/Context;I)V

    const/4 p1, 0x1

    const-string v1, "Not Installed BeaconManager"

    .line 114
    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 116
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->createNeaybyScanningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 239
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onDestroyView()Z

    .line 241
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "NearbyScanning"

    const-string v1, "onPause"

    .line 100
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "NearbyScanning"

    const-string v1, "onResume"

    .line 79
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->checkApkUpdateStatus()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mBadge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->startAnimation()V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
