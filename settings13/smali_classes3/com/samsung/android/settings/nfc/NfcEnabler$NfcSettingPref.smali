.class Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;
.super Ljava/lang/Object;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcSettingPref"
.end annotation


# instance fields
.field AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

.field private NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

.field NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field ScreenPref:Landroidx/preference/PreferenceScreen;

.field StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field TapPay:Landroidx/preference/SecPreferenceScreen;

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;


# direct methods
.method static bridge synthetic -$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;Landroidx/preference/SecSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionsSettingToggle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tNfcSettingToggle = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tStandardMode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tCardMode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tAndroidBeam = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tPaymentSim = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tTapPay = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tScreenPref = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ScreenPref:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tNfcJapanPreferenceSecureNfc = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
