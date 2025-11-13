.class Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;
.super Ljava/lang/Object;
.source "WifiSmartNetworkSwitchEnabler.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Lcom/android/settings/widget/SettingsMainSwitchBar;Landroidx/preference/SecPreferenceScreen;Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;Landroidx/preference/SwitchPreferenceCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange: SwitchForIndividualApps - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSmartNetworkSwitchEnabler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_switch_for_individual_apps_enabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
