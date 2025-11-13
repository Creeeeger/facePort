.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    sget p1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "FcstFaceLockSettings"

    const-string/jumbo v0, "showFaceRetryDialog dismissed! Finish the activity!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "FaceSettings_register"

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "FaceSettings_register_alternative"

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "FaceSettings_unlock_switch"

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method
