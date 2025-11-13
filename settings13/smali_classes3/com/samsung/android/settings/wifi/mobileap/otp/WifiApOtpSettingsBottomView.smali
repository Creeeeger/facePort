.class public Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;
.super Ljava/lang/Object;
.source "WifiApOtpSettingsBottomView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApOtpSettingsBottomView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field mButtonBar:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mInfoButton:Landroid/view/MenuItem;

.field private mPrimaryTextColor:Ljava/lang/String;

.field private mQrCodeButton:Landroid/view/MenuItem;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mWifiApOtpSettings:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlaunchQrCodeActivity(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->launchQrCodeActivity()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->TAG:Ljava/lang/String;

    const-string v1, "WifiApQrInfoBottomView() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mContext:Landroid/content/Context;

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mWifiApOtpSettings:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    .line 46
    sget p1, Lcom/android/settings/R$color;->wifi_ap_primary_text_color:I

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->removeAlphaColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mPrimaryTextColor:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->initBottomBar()V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->initBottomNavigation()V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private buildNewConfig()Landroid/net/wifi/SoftApConfiguration;
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    .line 91
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchQrCodeActivity buildNewConfig() - securityType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 93
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-virtual {v1, p0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 97
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initBottomBar()V
    .locals 4

    .line 53
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->TAG:Ljava/lang/String;

    const-string v1, "initBottomBar() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_guest_password_bottom_layout:I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private launchQrCodeActivity()V
    .locals 3

    .line 104
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->TAG:Ljava/lang/String;

    const-string v1, "launchQrCodeActivity() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->buildNewConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_config"

    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0xd48

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class v0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "MHS Security type is not WPA2, please set to Wpa2"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public initBottomNavigation()V
    .locals 2

    .line 65
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->TAG:Ljava/lang/String;

    const-string v1, "initBottomNavigation() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$id;->bottom_navigation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 68
    sget v1, Lcom/android/settings/R$id;->qr_code_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mQrCodeButton:Landroid/view/MenuItem;

    .line 69
    sget v1, Lcom/android/settings/R$id;->info_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mInfoButton:Landroid/view/MenuItem;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public update()V
    .locals 2

    .line 121
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->TAG:Ljava/lang/String;

    const-string v1, "update: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
