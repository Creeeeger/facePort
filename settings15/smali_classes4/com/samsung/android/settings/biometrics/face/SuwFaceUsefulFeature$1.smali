.class public final Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    const v1, 0x7f0a0edd

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "previousStage"

    const-string v1, "lock_screen_fingerprint"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    iget-wide v0, v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mGkPwHandle:J

    const-string v2, "gk_pw_handle"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "fromSetupWizard"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "fromTip"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    iget v0, v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mLaunchFingerLock:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    return-void
.end method
