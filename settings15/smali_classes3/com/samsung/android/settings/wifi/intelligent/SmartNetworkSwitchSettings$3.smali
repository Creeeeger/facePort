.class public final Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    sget-object p1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->finishSnsSettings()V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    sget-object p1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->finishSnsSettings()V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    sget-object p1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->finishSnsSettings()V

    :cond_4
    :goto_0
    return-void
.end method
