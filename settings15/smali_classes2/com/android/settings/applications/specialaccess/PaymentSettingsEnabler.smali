.class public final Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field public mIsPaymentAvailable:Z

.field public final mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {p1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mIsPaymentAvailable:Z

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final handleNfcStateChanged(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    if-eq p1, v1, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mIsPaymentAvailable:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const p0, 0x7f14197e

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const p0, 0x7f14197f

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
