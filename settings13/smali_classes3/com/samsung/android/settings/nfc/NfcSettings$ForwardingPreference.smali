.class Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;
.super Ljava/lang/Object;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardingPreference"
.end annotation


# instance fields
.field androidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field nfcSettingPref:Landroidx/preference/PreferenceScreen;

.field paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field secureNfc:Landroidx/preference/SecSwitchPreference;

.field standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field tapPay:Landroidx/preference/SecPreferenceScreen;

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcSettings$ForwardingPreference;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    return-void
.end method
