.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApDataSaver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    return-void
.end method


# virtual methods
.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 312
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Data saver is enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->-$$Nest$mupdateMHSSwitch(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    :cond_0
    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
