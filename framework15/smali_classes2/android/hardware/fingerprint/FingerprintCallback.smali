.class public Landroid/hardware/fingerprint/FingerprintCallback;
.super Ljava/lang/Object;
.source "FingerprintCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintCallback$RemoveRequest;
    }
.end annotation


# static fields
.field public static final blacklist REMOVE_ALL:I = 0x2

.field public static final blacklist REMOVE_SINGLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FingerprintCallback"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private blacklist mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private blacklist mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private blacklist mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

.field private blacklist mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

.field private blacklist mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private blacklist mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private blacklist mRemoveRequest:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;ILandroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iput p2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveRequest:I

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method


# virtual methods
.method public blacklist sendAcquiredResult(Landroid/content/Context;II)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v1, 0x7

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onAcquired(Z)V

    :cond_1
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    move v2, p3

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v3, :cond_3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eq p2, v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public blacklist sendAuthenticatedFailed()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method public blacklist sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_0

    const-string v0, "FingerprintCallback"

    const-string v1, "Authentication succeeded but callback is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;IZ)V

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    return-void
.end method

.method public blacklist sendChallengeGenerated(JII)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    if-nez v0, :cond_0

    const-string v0, "FingerprintCallback"

    const-string v1, "sendChallengeGenerated, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    invoke-interface {v0, p3, p4, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    return-void
.end method

.method public blacklist sendEnrollResult(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_0
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
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    invoke-interface {v1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;->onDetectionError(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist sendFingerprintDetected(IIZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    if-nez v0, :cond_0

    const-string v0, "FingerprintCallback"

    const-string v1, "sendFingerprintDetected, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;->onFingerprintDetected(IIZ)V

    return-void
.end method

.method public blacklist sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveRequest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "FingerprintCallback"

    if-nez p1, :cond_1

    const-string v1, "Received MSG_REMOVED, but fingerprint is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    if-nez v1, :cond_2

    const-string v1, "Missing fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finger id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method public blacklist sendUdfpsOverlayShown()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsOverlayShown()V

    :cond_0
    return-void
.end method

.method public blacklist sendUdfpsPointerDown(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_0

    const-string v0, "FingerprintCallback"

    const-string v1, "sendUdfpsPointerDown, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onUdfpsPointerDown(I)V

    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsPointerDown(I)V

    :cond_1
    return-void
.end method

.method public blacklist sendUdfpsPointerUp(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_0

    const-string v0, "FingerprintCallback"

    const-string v1, "sendUdfpsPointerUp, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onUdfpsPointerUp(I)V

    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsPointerUp(I)V

    :cond_1
    return-void
.end method
