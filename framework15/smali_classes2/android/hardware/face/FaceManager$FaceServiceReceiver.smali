.class Landroid/hardware/face/FaceManager$FaceServiceReceiver;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceServiceReceiver"
.end annotation


# instance fields
.field private final blacklist mFaceCallback:Landroid/hardware/face/FaceCallback;

.field final synthetic blacklist this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$5ZQE9cPX995-rHNQ0ywmvjTBM_4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onAcquired$1(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7STVOSRVrY4ZbXpdAo2LEUcH4to(Landroid/hardware/face/FaceManager$FaceServiceReceiver;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onFaceDetected$3(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$D0-1KD0HKCQ4Y56pKIV5gykuuCo(Landroid/hardware/face/FaceManager$FaceServiceReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onEnrollResult$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dha-SQYqX53c7KPHRZwdLzwKvd4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Z[I[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onFeatureGet$7(Z[I[Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NikGuFvxPGSJpH9YDB7slq_vksw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onRemoved$5(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bYhK8f1cgGkYM4erR1GeyaNMrQw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onError$4(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$buBgEadi40FnsVfKeK2ggUIZQmU(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onSemAuthenticationSucceededWithBundle$12(Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eyRQBXMxdpDuVPRUWbqllbGjruw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZ[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onSemAuthenticationSucceeded$11(Landroid/hardware/face/Face;IZ[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fSFISv16PZSxcy_5x41wYAaddC4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onFeatureSet$6(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gQgYQB_FBwOCTzuNOYPGFFSmuJ4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onAuthenticationFrame$9(Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kitfnFiDiHls0xbwMcuS0t8Lndc(Landroid/hardware/face/FaceManager$FaceServiceReceiver;[BIIIILandroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onSemImageProcessed$13([BIIIILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m92pSXpcpAaBUgTarV1O-C3h3_k(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onAuthenticationSucceeded$2(Landroid/hardware/face/Face;IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$veoW_45VDEkaMcHO7b-7juodSaw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onEnrollmentFrame$10(Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zBJEQ84q2Vv7VdwGTaKs9QAAJ04(Landroid/hardware/face/FaceManager$FaceServiceReceiver;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onChallengeGenerated$8(IIJ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    iput-object p2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    return-void
.end method

.method private synthetic blacklist lambda$onAcquired$1(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/face/FaceCallback;->sendAcquiredResult(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationFrame$9(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/face/FaceCallback;->sendAuthenticationFrame(Landroid/content/Context;Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationSucceeded$2(Landroid/hardware/face/Face;IZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceCallback;->sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onChallengeGenerated$8(IIJ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceCallback;->sendChallengeGenerated(IIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnrollResult$0(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceCallback;->sendEnrollResult(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnrollmentFrame$10(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/face/FaceCallback;->sendEnrollmentFrame(Landroid/content/Context;Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$4(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/face/FaceCallback;->sendErrorResult(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onFaceDetected$3(IIZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceCallback;->sendFaceDetected(IIZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onFeatureGet$7(Z[I[Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceCallback;->sendGetFeatureCompleted(Z[I[Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onFeatureSet$6(ZI)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceCallback;->sendSetFeatureCompleted(ZI)V

    return-void
.end method

.method private synthetic blacklist lambda$onRemoved$5(Landroid/hardware/face/Face;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceCallback;->sendRemovedResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSemAuthenticationSucceeded$11(Landroid/hardware/face/Face;IZ[B)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceCallback;->sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onSemAuthenticationSucceededWithBundle$12(Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceCallback;->sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSemImageProcessed$13([BIIIILandroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/FaceCallback;->sendImageProcessed([BIIIILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSemStatusUpdate$14()V
    .locals 0

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda14;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;II)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/face/FaceCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda15;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceAuthenticationFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v7, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;IIJ)V

    invoke-virtual {v0, v7}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/face/Face;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceEnrollFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onError(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;II)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onFaceDetected(IIZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onFeatureGet(Z[I[Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Z[I[Z)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onFeatureSet(ZI)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda13;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/face/Face;I)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda11;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "face_unlock_re_enroll"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public blacklist onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v7, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZ[B)V

    invoke-virtual {v0, v7}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSemAuthenticationSucceededWithBundle(Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v7, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSemImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    iget-object v0, v8, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v9

    new-instance v10, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda7;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;[BIIIILandroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSemStatusUpdate(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
