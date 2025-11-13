.class public Landroid/hardware/face/FaceCallback;
.super Ljava/lang/Object;
.source "FaceCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = " FaceCallback"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

.field private blacklist mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private blacklist mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private blacklist mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

.field private blacklist mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

.field private blacklist mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

.field private blacklist mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private blacklist mRemovalFace:Landroid/hardware/face/Face;

.field private blacklist mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/hardware/biometrics/CryptoObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    iput-object p2, p0, Landroid/hardware/face/FaceCallback;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$EnrollmentCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$FaceDetectionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$GetFeatureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$RemovalCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$RemovalCallback;Landroid/hardware/face/Face;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    iput-object p2, p0, Landroid/hardware/face/FaceCallback;->mRemovalFace:Landroid/hardware/face/Face;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager$SetFeatureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceCallback;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    return-void
.end method

.method private static blacklist getHelpCode(II)I
    .locals 1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist sendAcquiredResult(Landroid/content/Context;II)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    new-instance v1, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v1, p2, p3}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    invoke-virtual {p0, p1, v0}, Landroid/hardware/face/FaceCallback;->sendAuthenticationFrame(Landroid/content/Context;Landroid/hardware/face/FaceAuthenticationFrame;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    new-instance v1, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v1, p2, p3}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    invoke-virtual {p0, p1, v0}, Landroid/hardware/face/FaceCallback;->sendEnrollmentFrame(Landroid/content/Context;Landroid/hardware/face/FaceEnrollFrame;)V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public blacklist sendAuthenticatedFailed()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method public blacklist sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/face/FaceManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/FaceManager$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    :cond_0
    return-void
.end method

.method public blacklist sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/face/FaceManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/FaceManager$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v1, v0, p4}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceededWithBundle(Landroid/hardware/face/FaceManager$AuthenticationResult;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ[B)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/face/FaceManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/FaceManager$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v1, v0, p4}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;[B)V

    :cond_0
    return-void
.end method

.method public blacklist sendAuthenticationFrame(Landroid/content/Context;Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 6

    if-nez p2, :cond_0

    const-string v0, " FaceCallback"

    const-string v1, "Received null authentication frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/face/FaceCallback;->getHelpCode(II)I

    move-result v2

    invoke-static {p1, v0, v1}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eqz v3, :cond_2

    iget-object v4, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v4, v2, v3}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist sendChallengeGenerated(IIJ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$GenerateChallengeCallback;->onGenerateChallengeResult(IIJ)V

    return-void
.end method

.method public blacklist sendEnrollResult(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_0
    return-void
.end method

.method public blacklist sendEnrollmentFrame(Landroid/content/Context;Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 13

    if-nez p2, :cond_0

    const-string v0, " FaceCallback"

    const-string v1, "Received null enrollment frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/face/FaceCallback;->getHelpCode(II)I

    move-result v11

    invoke-static {p1, v1, v2}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v12

    iget-object v3, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-virtual {p2}, Landroid/hardware/face/FaceEnrollFrame;->getCell()Landroid/hardware/face/FaceEnrollCell;

    move-result-object v6

    invoke-virtual {p2}, Landroid/hardware/face/FaceEnrollFrame;->getStage()I

    move-result v7

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getPan()F

    move-result v8

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getTilt()F

    move-result v9

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getDistance()F

    move-result v10

    move v4, v11

    move-object v5, v12

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist sendErrorResult(Landroid/content/Context;II)V
    .locals 4

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-static {p1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-static {p1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    iget-object v2, p0, Landroid/hardware/face/FaceCallback;->mRemovalFace:Landroid/hardware/face/Face;

    invoke-static {p1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    invoke-interface {v1, p2}, Landroid/hardware/face/FaceManager$FaceDetectionCallback;->onDetectionError(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist sendFaceDetected(IIZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    if-nez v0, :cond_0

    const-string v0, " FaceCallback"

    const-string v1, "sendFaceDetected, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceDetectionCallback;->onFaceDetected(IIZ)V

    return-void
.end method

.method public blacklist sendGetFeatureCompleted(Z[I[Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$GetFeatureCallback;->onCompleted(Z[I[Z)V

    return-void
.end method

.method public blacklist sendImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onImageProcessed([BIIIILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/hardware/face/FaceCallback;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onImageProcessed(IIIILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist sendRemovedResult(Landroid/hardware/face/Face;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method public blacklist sendSetFeatureCompleted(ZI)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceCallback;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$SetFeatureCallback;->onCompleted(ZI)V

    return-void
.end method
