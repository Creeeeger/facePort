.class Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;
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

    .line 947
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->val$gkPwHandle:J

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreEnroll(J)V
    .locals 7

    .line 951
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->val$gkPwHandle:J

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)I

    move-result v4

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$002(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;[B)[B

    .line 952
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->val$gkPwHandle:J

    invoke-static {p1, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 954
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$000(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)[B

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string p1, "FcstFaceLockSettings"

    const-string v0, "CONFIRM_REQUEST: token = NULL"

    .line 955
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    .line 957

    move-result-object p0

    .line 956
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 960
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$400(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 961
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$300(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    goto :goto_0

    .line 962
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    .line 963
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    .line 964
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FaceSettings_register_alternative"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 965
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1500(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)V

    goto :goto_0

    .line 967
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$700(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 968
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$802(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;I)I

    .line 970
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->access$1400(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    :goto_0
    return-void
.end method
