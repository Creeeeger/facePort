.class Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;
.source "FaceLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 801
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->val$gkPwHandle:J

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreEnroll(J)V
    .locals 7

    .line 805
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->val$gkPwHandle:J

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)I

    move-result v4

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$002(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;[B)[B

    .line 806
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->val$gkPwHandle:J

    invoke-static {p1, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 808
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$000(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)[B

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string p1, "FcstFaceLockSettings"

    const-string v0, "CHOOSE_LOCK_GENERIC_REQUEST: token = NULL"

    .line 809
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    .line 811

    move-result-object p0

    .line 810
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 814
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$400(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 815
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$500(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 816
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$500(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "previousStage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$700(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 818
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$802(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;I)I

    .line 821
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 822
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$900(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 824
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_face_settings_entry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 825
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1000(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Landroid/content/Context;)V

    .line 827
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 828
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lock_screen_face"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 829
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    goto :goto_0

    .line 831
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    .line 832
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setupwizard_face"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    .line 833
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 834
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1300(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    .line 838
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1400(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    goto :goto_1

    .line 840
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1500(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)V

    :goto_1
    return-void
.end method
