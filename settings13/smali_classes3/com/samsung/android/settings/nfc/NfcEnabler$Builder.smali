.class public Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
.super Ljava/lang/Object;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

.field private NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

.field private NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field private StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private context:Landroid/content/Context;

.field private screenPref:Landroidx/preference/PreferenceScreen;

.field private tapPay:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetAndroidBeam(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetCardMode(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetConnectionsSettingToggle(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetNfcSettingToggle(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetPaymentSim(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetStandardMode(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscreenPref(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroidx/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->screenPref:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettapPay(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroidx/preference/SecPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->tapPay:Landroidx/preference/SecPreferenceScreen;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AndroidBeam(Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    return-object p0
.end method

.method public CardMode(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    return-object p0
.end method

.method public ConnectionsSettingToggle(Landroidx/preference/SecSwitchPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method public NfcJapanPreferenceSecureNfc(Landroidx/preference/SecSwitchPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method public NfcSettingPref(Landroidx/preference/PreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->screenPref:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method public NfcSettingToggle(Lcom/android/settings/widget/SettingsMainSwitchBar;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method public PaymentSim(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    return-object p0
.end method

.method public StandardMode(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    return-object p0
.end method

.method public TapAndPay(Landroidx/preference/SecPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->tapPay:Landroidx/preference/SecPreferenceScreen;

    return-object p0
.end method

.method public build()Lcom/samsung/android/settings/nfc/NfcEnabler;
    .locals 2

    .line 262
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;Lcom/samsung/android/settings/nfc/NfcEnabler-IA;)V

    return-object v0
.end method
