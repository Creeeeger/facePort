.class Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;
.source "FaceEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/face/FaceEntry;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceEntry;Landroid/content/Intent;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreEnroll(J)V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->val$data:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$200()I

    move-result v3

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$002(Lcom/samsung/android/settings/biometrics/face/FaceEntry;[B)[B

    .line 257
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->val$data:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 259
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$000(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FcstFaceEntry"

    const-string p2, "CONFIRM_REQUEST: token = NULL"

    .line 260
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    .line 262

    move-result-object p0

    const/4 p2, 0x1

    .line 261
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$300(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$200()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 267
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$400(Lcom/samsung/android/settings/biometrics/face/FaceEntry;Landroid/content/Context;)V

    .line 268
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 270
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceEntry;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$500(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)V

    :goto_0
    return-void
.end method
