.class public final Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getAdvancedAutohotspotLCDSettings()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAdvancedAutohotspotLCDSettings(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;->refreshDisconnectWhenNotInUseSwitch()V

    return v0
.end method
