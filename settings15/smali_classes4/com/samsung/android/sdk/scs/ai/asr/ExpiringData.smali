.class public final Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT_DURATION:Ljava/time/Duration;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public checkValidate:Ljava/util/function/Function;

.field public final data:Ljava/util/concurrent/atomic/AtomicReference;

.field public final defaultSupplier:Ljava/util/function/Supplier;

.field public lastTimeUpdate:J

.field public final name:Ljava/lang/String;

.field public final timeout:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->DEFAULT_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->DEFAULT_DURATION:Ljava/time/Duration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExpiringData@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->data:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda3;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lastTimeUpdate:J

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->defaultSupplier:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->timeout:Ljava/time/Duration;

    return-void
.end method
