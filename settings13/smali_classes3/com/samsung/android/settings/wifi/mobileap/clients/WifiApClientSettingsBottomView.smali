.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;
.super Ljava/lang/Object;
.source "WifiApClientSettingsBottomView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApClientSettingsBottomView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field mButtonBar:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mMacAddress:Ljava/lang/String;

.field private mPauseButton:Landroid/view/MenuItem;

.field private mResumeButton:Landroid/view/MenuItem;

.field private mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPauseButton(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResumeButton(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApClientSettings(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->TAG:Ljava/lang/String;

    const-string v1, "WifiApQrInfoBottomView() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mContext:Landroid/content/Context;

    .line 36
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mActivity:Landroid/app/Activity;

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mMacAddress:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->initBottomBar()V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->initBottomNavigation()V

    return-void
.end method

.method private initBottomBar()V
    .locals 4

    .line 44
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->TAG:Ljava/lang/String;

    const-string v1, "initBottomBar() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 50
    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_client_settings_bottom_layout:I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initBottomNavigation()V
    .locals 3

    .line 56
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->TAG:Ljava/lang/String;

    const-string v1, "initBottomNavigation() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$id;->bottom_navigation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 59
    sget v1, Lcom/android/settings/R$id;->pause_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    .line 60
    sget v1, Lcom/android/settings/R$id;->resume_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mMacAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->isWifiApClientDataPausedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
