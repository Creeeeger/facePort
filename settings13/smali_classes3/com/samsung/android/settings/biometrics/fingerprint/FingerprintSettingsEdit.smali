.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;
.super Lcom/android/settings/SettingsActivity;
.source "FingerprintSettingsEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;
    }
.end annotation


# static fields
.field private static mActionbar:Landroidx/appcompat/app/ActionBar;

.field private static mOptionsMenu:Landroid/view/Menu;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmActionbar()Landroidx/appcompat/app/ActionBar;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActionbar:Landroidx/appcompat/app/ActionBar;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmOptionsMenu()Landroid/view/Menu;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mOptionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmActionbar(Landroidx/appcompat/app/ActionBar;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mActionbar:Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 92
    const-class p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 98
    const-class p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FpstFingerprintSettingsRename"

    const-string v0, "onCreate"

    .line 104
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 141
    sput-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mOptionsMenu:Landroid/view/Menu;

    .line 142
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 144
    sget v0, Lcom/android/settings/R$string;->common_remove:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 146
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 131
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onMultiWindowModeChanged(Z)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FpstFingerprintSettingsRename"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 151
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$sfgetmFingerprintSettingsRenameFragment()Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    move-result-object v0

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const v0, 0x102002c

    if-eq v1, v0, :cond_0

    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    .line 160
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->deleteFingerprint()Z

    return v3

    .line 157
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$mhandleNext(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    return v3

    .line 154
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->-$$Nest$mbackToFingerList(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    return v3
.end method

.method public onPause()V
    .locals 3

    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    const-string v0, "FpstFingerprintSettingsRename"

    const-string v1, "onPause"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "reason"

    const-string v2, "cancelsession"

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
