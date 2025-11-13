.class public final Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

.field public NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

.field public NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field public ReaderMode:Landroidx/preference/SecSwitchPreference;

.field public final context:Landroid/content/Context;

.field public otherService:Landroidx/preference/SecPreferenceScreen;

.field public screenPref:Landroidx/preference/PreferenceScreen;

.field public tapPay:Landroidx/preference/SecPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->context:Landroid/content/Context;

    return-void
.end method
