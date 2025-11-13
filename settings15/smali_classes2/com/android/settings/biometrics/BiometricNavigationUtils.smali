.class public final Lcom/android/settings/biometrics/BiometricNavigationUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/biometrics/BiometricNavigationUtils;->mUserId:I

    return-void
.end method


# virtual methods
.method public final getBiometricSettingsIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    iget v0, p0, Lcom/android/settings/biometrics/BiometricNavigationUtils;->mUserId:I

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :cond_0
    const-string p1, "android.app.extra.RESTRICTION"

    iget-object p2, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.USER_ID"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0

    :cond_1
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p4, p2}, Lcom/android/settings/biometrics/BiometricNavigationUtils;->getSettingsPageIntent(Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final getSettingsPageIntent(Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.android.settings"

    invoke-static {v0, p2}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string p1, "from_settings_summary"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.intent.extra.USER_ID"

    iget p0, p0, Lcom/android/settings/biometrics/BiometricNavigationUtils;->mUserId:I

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "page_transition_type"

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p2
.end method
