.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;
.super Landroid/text/style/ClickableSpan;
.source "WifiApWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoHotspotConnectionClickable"
.end annotation


# instance fields
.field focusOnDisconnectNotInUsePreference:Z

.field mDialog:Landroid/app/AlertDialog;

.field shouldDismissDialogOnClick:Z

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field useSubSetting:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/AlertDialog;ZZZ)V
    .locals 0

    .line 2525
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2526
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->mDialog:Landroid/app/AlertDialog;

    .line 2527
    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->shouldDismissDialogOnClick:Z

    .line 2528
    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->focusOnDisconnectNotInUsePreference:Z

    .line 2529
    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->useSubSetting:Z

    return-void
.end method

.method private launchViaSettingActivity()V
    .locals 2

    .line 2565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.setttings.WIFI_AUTO_HOTSPOT_CONNECTIONS_SETTINGS"

    .line 2566
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 2567
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2568
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchViaSubSettingLauncher()V
    .locals 3

    .line 2550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    const-string v2, "disconnect_when_not_in_use"

    .line 2551
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 2554
    const-class v2, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    const/4 v2, 0x0

    .line 2555
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 2556
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->focusOnDisconnectNotInUsePreference:Z

    if-eqz v2, :cond_0

    .line 2557
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 2559
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2560
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2561
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2534
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->useSubSetting:Z

    if-eqz p1, :cond_0

    .line 2535
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->launchViaSubSettingLauncher()V

    goto :goto_0

    .line 2537
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->launchViaSettingActivity()V

    .line 2539
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->shouldDismissDialogOnClick:Z

    if-eqz p1, :cond_1

    .line 2540
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x0

    .line 2545
    iput p0, p1, Landroid/text/TextPaint;->linkColor:I

    const/4 p0, 0x1

    .line 2546
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
