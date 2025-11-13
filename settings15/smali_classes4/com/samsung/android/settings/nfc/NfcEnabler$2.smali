.class public final Lcom/samsung/android/settings/nfc/NfcEnabler$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcStateChangeAllowed()Z

    move-result p1

    const-string v0, "NfcEnabler"

    if-nez p1, :cond_1

    const-string p1, "Satellite mode is on. Disabling NFC."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "Satellite mode is off. Enabling NFC."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method
