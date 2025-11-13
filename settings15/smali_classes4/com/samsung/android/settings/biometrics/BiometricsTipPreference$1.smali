.class public final Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    iget p1, p1, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mBiometricType:I

    const/16 v0, 0x100

    const/4 v1, 0x1

    const-string/jumbo v2, "previousStage"

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "lock_screen_face"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "lock_screen_fingerprint"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    iget-wide v2, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mGkPwHandle:J

    const-string v0, "gk_pw_handle"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "fromTip"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    iget v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
