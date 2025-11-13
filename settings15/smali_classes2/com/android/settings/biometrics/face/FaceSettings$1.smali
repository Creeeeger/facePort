.class Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;
.source "FaceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/face/FaceSettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreEnroll(J)V
    .locals 4

    .line 590
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->val$data:Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)I

    move-result v3

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$002(Lcom/samsung/android/settings/biometrics/face/FaceSettings;[B)[B

    .line 591
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->val$data:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 593
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$000(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FcstFaceSettings"

    const-string p2, "CONFIRM_REQUEST: token = NULL"

    .line 594
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    .line 596

    move-result-object v0

    const/4 p2, 0x1

    .line 595
    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
