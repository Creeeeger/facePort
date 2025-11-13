.class public final Lcom/android/settings/nfc/SecureNfcEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPreference:Landroidx/preference/TwoStatePreference;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/TwoStatePreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/TwoStatePreference;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final handleNfcStateChanged(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/TwoStatePreference;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1419db    # 1.9686E38f

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const p0, 0x7f141992

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
