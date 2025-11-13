.class Lcom/samsung/android/settings/nfc/NfcForegroundPreference;
.super Landroidx/preference/SwitchPreference;
.source "NfcForegroundPreference.java"


# instance fields
.field private final mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 33
    sget p1, Lcom/android/settings/R$string;->nfc_payment_open_app:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 34
    invoke-virtual {p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    const/16 p0, 0xe47

    .line 40
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .line 45
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/16 v0, 0xe45

    const/16 v1, 0x1b68

    int-to-long v2, p1

    .line 48
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    return-void
.end method
