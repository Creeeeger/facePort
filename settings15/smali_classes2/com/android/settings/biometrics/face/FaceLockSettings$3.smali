.class Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;
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

    .line 291
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->val$gkPwHandle:J

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreEnroll(J)V
    .locals 7

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->val$gkPwHandle:J

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)I

    move-result v4

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$002(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;[B)[B

    .line 297
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$000(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FcstFaceLockSettings"

    const-string p2, "Face register external : token = NULL"

    .line 298
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    .line 300

    move-result-object p0

    const/4 p2, 0x1

    .line 299
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$300(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    :goto_0
    return-void
.end method
