.class public Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;
.super Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIsRequestChallenge:Z

.field public mLayoutView:Landroid/view/View;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "onActivityResult : requestCode : "

    const-string v1, " resultCode : "

    const-string v2, " data is NULL : "

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "BiometricsDisclaimerWithConfirmLock"

    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mIsRequestChallenge:Z

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mLayoutView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "gk_pw_handle"

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const p1, 0x7f0a01c8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mLayoutView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mIsRequestChallenge:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    return-void
.end method

.method public final onResume()V
    .locals 6

    const v0, 0x7f0a01c8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mLayoutView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mIsRequestChallenge:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mGkPwHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mIsRequestChallenge:Z

    if-nez v0, :cond_3

    const-string v0, "launchConfirmLock"

    const-string v1, "BiometricsDisclaimerWithConfirmLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3e8

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getConfirmLockHeader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_1

    iput v3, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_2

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mKnoxWorkProfileSecurity:Z

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    if-nez v0, :cond_3

    const-string v0, "Fail launchConfirmationActivity!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    invoke-super {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onResume()V

    return-void
.end method
