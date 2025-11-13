.class Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
.source "FaceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V
    .locals 1

    .line 1129
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAlternativeRemovalCallback : Remove Error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", activity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FcstFaceSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 1133
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    .line 1134

    move-result-object p1

    const/4 p2, 0x0

    .line 1133
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 1

    const-string p1, "FcstFaceSettings"

    const-string v0, "mAlternativeRemovalCallback : onRemovalSucceeded"

    .line 1140
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$202(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)Z

    .line 1142
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->access$300(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    return-void
.end method
