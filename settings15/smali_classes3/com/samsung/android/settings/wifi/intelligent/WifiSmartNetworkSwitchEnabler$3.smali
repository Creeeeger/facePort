.class public final Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPreferenceChange: SwitchForIndividualApps - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSmartNetworkSwitchEnabler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "wifi_switch_for_individual_apps_enabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
