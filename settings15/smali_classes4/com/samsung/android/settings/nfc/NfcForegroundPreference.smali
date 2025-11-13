.class public final Lcom/samsung/android/settings/nfc/NfcForegroundPreference;
.super Landroidx/preference/SwitchPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    const p1, 0x7f1419be

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    const/16 p0, 0xe47

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    if-eq v0, p1, :cond_0

    int-to-long v0, p1

    const/16 v2, 0xe45

    const/16 v3, 0x1b68

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    return-void
.end method
