.class public Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field public mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

.field public mReEnrollType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->removeFaceAndReEnroll()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1429a9

    goto :goto_0

    :cond_0
    const p1, 0x7f1429a8

    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f1429aa

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p1, 0x7f142d7c

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const p1, 0x7f1408bf

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance p1, Lcom/android/settings/biometrics/face/FaceUpdater;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/biometrics/face/FaceUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "face_unlock_re_enroll"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mReEnrollType:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ReEnroll Type : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mReEnrollType:I

    const-string v1, "FaceReEnrollDialog"

    invoke-static {p1, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mReEnrollType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->removeFaceAndReEnroll()V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error unsupported flow for : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mReEnrollType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :goto_1
    return-void
.end method

.method public final removeFaceAndReEnroll()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;->mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

    new-instance v2, Lcom/samsung/android/bio/face/SemBioFace;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Ljava/lang/CharSequence;IJ)V

    new-instance v3, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog$1;-><init>(Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;)V

    iget-object p0, v1, Lcom/android/settings/biometrics/face/FaceUpdater;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance v4, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingRemovalCallback;

    iget-object v1, v1, Lcom/android/settings/biometrics/face/FaceUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1, v3}, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingRemovalCallback;-><init>(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    invoke-virtual {p0, v2, v0, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    return-void
.end method
