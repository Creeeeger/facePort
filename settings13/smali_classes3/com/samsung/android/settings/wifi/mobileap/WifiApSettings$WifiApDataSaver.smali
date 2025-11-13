.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApDataSaver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

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

    .line 865
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Data saver is enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
