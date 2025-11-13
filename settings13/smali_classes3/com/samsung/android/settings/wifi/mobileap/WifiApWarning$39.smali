.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "TETH_010"

    const-string p2, "8048"

    .line 902
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 904
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    .line 905
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 906
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
