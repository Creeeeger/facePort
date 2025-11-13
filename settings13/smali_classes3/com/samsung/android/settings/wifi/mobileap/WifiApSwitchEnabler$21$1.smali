.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21$1;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1128
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startProvisioning with delay of 600ms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$mstartProvisioningIfNecessary(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    return-void
.end method
