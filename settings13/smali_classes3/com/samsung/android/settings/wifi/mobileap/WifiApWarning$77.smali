.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$77;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showDatalimitReachedpopup(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;I)V
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

    .line 2173
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$77;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 2175
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$77;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    .line 2176
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$77;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mstartProvisioningIfNecessary(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    return-void
.end method
