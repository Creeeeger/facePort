.class public Lcom/android/settings/nfc/NfcPaymentPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/android/settings/nfc/NfcPaymentPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mListener:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mListener:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method
