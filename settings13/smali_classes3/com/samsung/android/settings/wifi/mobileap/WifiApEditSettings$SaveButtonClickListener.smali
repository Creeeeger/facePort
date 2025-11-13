.class Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;
.super Ljava/lang/Object;
.source "WifiApEditSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 724
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    const-string p1, "TETH_011"

    const-string v0, "8008"

    .line 725
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    sget-boolean p1, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z

    if-eqz p1, :cond_3

    .line 727
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 728
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 729
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 732
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dualband Selected but wifi is ON, so popup dialog"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->-$$Nest$mshowDualApWarningDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    goto :goto_0

    .line 735
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->-$$Nest$mshowBandSelectionTipsDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    goto :goto_0

    .line 738
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->-$$Nest$mshowBandSelectionTipsDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    :goto_0
    return-void
.end method
