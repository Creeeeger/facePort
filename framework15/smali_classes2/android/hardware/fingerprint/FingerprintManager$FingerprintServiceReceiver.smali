.class Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FingerprintServiceReceiver"
.end annotation


# instance fields
.field private final blacklist mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$4tMjIMra5mfFUenZCSAjLmYHGUA(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onUdfpsPointerUp$8(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EP01_M5GmAMUcfSf5atyl-GZGQg(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onChallengeGenerated$6(JII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GVW7l7bYwRHo64GREc4Tka7hfHo(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onError$4(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J_QZ_Q514lPGzaiB7HXJ5gpc2mM(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onRemoved$5(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YpItk3s_PStDuSsRiTUZyrtXf-Y(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onFingerprintDetected$3(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_0NkQsr0St-Tl8nzWBxzCnscUmo(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onUdfpsPointerDown$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qJkN7o8WHeiQ9ZwiDCCCzJxCpXI(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onEnrollResult$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wcZms5DTCBGW5VTEeJRCWEIwTW4(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onAcquired$1(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ycc1XbEGUiXF4L2o8puCUBhiYp8(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onAuthenticationSucceeded$2(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    return-void
.end method

.method private synthetic blacklist lambda$onAcquired$1(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmContext(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintCallback;->sendAcquiredResult(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationSucceeded$2(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintCallback;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onChallengeGenerated$6(JII)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintCallback;->sendChallengeGenerated(JII)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnrollResult$0(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintCallback;->sendEnrollResult(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$4(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmContext(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintCallback;->sendErrorResult(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onFingerprintDetected$3(IIZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintCallback;->sendFingerprintDetected(IIZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onRemoved$5(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintCallback;->sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onUdfpsPointerDown$7(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintCallback;->sendUdfpsPointerDown(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onUdfpsPointerUp$8(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintCallback;->sendUdfpsPointerUp(I)V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;II)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/fingerprint/FingerprintCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda9;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;JII)V

    invoke-virtual {v0, v7}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onError(II)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;II)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onFingerprintDetected(IIZ)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onUdfpsOverlayShown()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/fingerprint/FingerprintCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
