.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    return-void
.end method


# virtual methods
.method public final onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onDataSaverChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const-string p1, "WifiApSettings"

    const-string v0, "Data saver is enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public final onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
