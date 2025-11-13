.class Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;
.super Ljava/lang/Object;
.source "WifiApOtpSettingsBottomView.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->initBottomNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 74
    sget v0, Lcom/android/settings/R$id;->qr_code_button:I

    if-ne p1, v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->-$$Nest$mlaunchQrCodeActivity(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)V

    goto :goto_0

    .line 76
    :cond_0
    sget v0, Lcom/android/settings/R$id;->info_button:I

    if-ne p1, v0, :cond_1

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "abcdefgh"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setOtpPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->resetSoftAp(Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
