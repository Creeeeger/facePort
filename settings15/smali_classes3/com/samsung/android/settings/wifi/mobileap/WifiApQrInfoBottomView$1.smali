.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0c0c

    const-string v1, "TETH_010"

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    if-ne p1, v0, :cond_0

    const-string p1, "8011"

    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "WifiApQrInfoBottomView"

    const-string v0, "launchQrCodeActivity() - Start"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_config"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 v0, 0xd48

    iput v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a07ed

    if-ne p1, v0, :cond_1

    const-string p1, "8012"

    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->showInfoDialog()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
