.class public Landroid/security/attestationverification/AttestationVerificationManager;
.super Ljava/lang/Object;
.source "AttestationVerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/attestationverification/AttestationVerificationManager$VerificationResult;,
        Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;,
        Landroid/security/attestationverification/AttestationVerificationManager$AttestationProfileId;
    }
.end annotation


# static fields
.field private static final blacklist MAX_TOKEN_AGE:Ljava/time/Duration;

.field public static final blacklist PARAM_CHALLENGE:Ljava/lang/String; = "localbinding.challenge"

.field public static final blacklist PARAM_ID:Ljava/lang/String; = "localbinding.id"

.field public static final blacklist PARAM_PUBLIC_KEY:Ljava/lang/String; = "localbinding.public_key"

.field public static final blacklist PROFILE_APP_DEFINED:I = 0x1

.field public static final blacklist PROFILE_PEER_DEVICE:I = 0x3

.field public static final blacklist PROFILE_SELF_TRUSTED:I = 0x2

.field public static final blacklist PROFILE_UNKNOWN:I = 0x0

.field public static final blacklist RESULT_FAILURE:I = 0x2

.field public static final blacklist RESULT_SUCCESS:I = 0x1

.field public static final blacklist RESULT_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AVF"

.field public static final blacklist TYPE_APP_DEFINED:I = 0x1

.field public static final blacklist TYPE_CHALLENGE:I = 0x3

.field public static final blacklist TYPE_PUBLIC_KEY:I = 0x2

.field public static final blacklist TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/security/attestationverification/IAttestationVerificationManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/security/attestationverification/AttestationVerificationManager;->MAX_TOKEN_AGE:Ljava/time/Duration;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/security/attestationverification/IAttestationVerificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/attestationverification/AttestationVerificationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/security/attestationverification/AttestationVerificationManager;->mService:Landroid/security/attestationverification/IAttestationVerificationManagerService;

    return-void
.end method

.method static synthetic blacklist lambda$verifyAttestation$0(Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V
    .locals 2

    iget v0, p1, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$verifyAttestation$1(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyAttestation result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVF"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static blacklist localBindingTypeToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CHALLENGE"

    goto :goto_0

    :pswitch_1
    const-string v0, "PUBLIC_KEY"

    goto :goto_0

    :pswitch_2
    const-string v0, "APP_DEFINED"

    goto :goto_0

    :pswitch_3
    const-string v0, "UNKNOWN"

    nop

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist verificationResultCodeToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "FAILURE"

    goto :goto_0

    :pswitch_1
    const-string v0, "SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "UNKNOWN"

    nop

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/attestationverification/AttestationProfile;",
            "I",
            "Landroid/os/Bundle;",
            "[B",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Landroid/security/attestationverification/VerificationToken;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p5, p6}, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, Landroid/security/attestationverification/AttestationVerificationManager;->mService:Landroid/security/attestationverification/IAttestationVerificationManagerService;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/security/attestationverification/IAttestationVerificationManagerService;->verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist verifyToken(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;Landroid/security/attestationverification/VerificationToken;Ljava/time/Duration;)I
    .locals 5

    if-nez p5, :cond_0

    sget-object v0, Landroid/security/attestationverification/AttestationVerificationManager;->MAX_TOKEN_AGE:Ljava/time/Duration;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/security/attestationverification/AttestationVerificationManager;->MAX_TOKEN_AGE:Ljava/time/Duration;

    invoke-virtual {p5, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gtz v0, :cond_1

    move-object v0, p5

    :goto_0
    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    iget-object v2, p0, Landroid/security/attestationverification/AttestationVerificationManager;->mService:Landroid/security/attestationverification/IAttestationVerificationManagerService;

    new-instance v3, Landroid/os/ParcelDuration;

    invoke-direct {v3, v0}, Landroid/os/ParcelDuration;-><init>(Ljava/time/Duration;)V

    invoke-interface {v2, p4, v3, v1}, Landroid/security/attestationverification/IAttestationVerificationManagerService;->verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error verifying token."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maximumAge cannot be greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/security/attestationverification/AttestationVerificationManager;->MAX_TOKEN_AGE:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
