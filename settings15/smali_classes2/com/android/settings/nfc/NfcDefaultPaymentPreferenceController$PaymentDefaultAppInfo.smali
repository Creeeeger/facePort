.class public final Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController$PaymentDefaultAppInfo;
.super Lcom/android/settingslib/applications/DefaultAppInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;


# virtual methods
.method public final loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController$PaymentDefaultAppInfo;->mInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
