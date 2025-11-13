.class Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;
.source "FaceLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

.field final synthetic val$gkPwHandle:J


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->val$gkPwHandle:J

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreEnroll(J)V
    .locals 8

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GK PW : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->val$gkPwHandle:J

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)I

    move-result v5

    move-wide v6, p1

    invoke-static/range {v2 .. v7}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$002(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;[B)[B

    .line 255
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->val$gkPwHandle:J

    invoke-static {p1, v2, v3}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$000(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "KEY_LOCK_SCREEN_FACE: token = NULL"

    .line 258
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    .line 260

    move-result-object p0

    const/4 p2, 0x1

    .line 259
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$300(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    :goto_0
    return-void
.end method
