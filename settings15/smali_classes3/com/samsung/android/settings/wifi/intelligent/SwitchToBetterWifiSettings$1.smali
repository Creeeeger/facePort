.class public final Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "WIFI_210"

    const-string v2, "1223"

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchToBetterWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo p2, "sem_wifi_switch_to_better_wifi_on_screen_enabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
