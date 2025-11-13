.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;->f$2:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 v1, 0x2101

    goto :goto_0

    :cond_0
    const/16 v1, 0x20d6

    :goto_0
    const/16 v2, 0x20d8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    iget-object v0, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const-string v1, "FcstFaceSettings"

    if-eqz v0, :cond_4

    iget v2, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    if-le v2, p0, :cond_1

    const-string p2, "Remove only Alternative face data"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/bio/face/SemBioFace;

    iget v0, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-object p1, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAlternativeRemovalCallback:Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

    invoke-virtual {p2, p0, v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    goto :goto_1

    :cond_1
    const-string p0, "deleteFace : faceList size is 1"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p2, "Remove all face data"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p0, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveAndRegister:Z

    iget-object p0, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget p2, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-object p1, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->removeAll(ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    goto :goto_1

    :cond_3
    const-string p0, "deleteFace : faceList size is 0"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, "deleteFace : error occurred"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
