.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

.field public final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lastTimeUpdate:J

    sub-long/2addr v1, v3

    if-eqz p1, :cond_0

    iget-object v3, v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->timeout:Ljava/time/Duration;

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    :cond_0
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v3, v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->checkValidate:Ljava/util/function/Function;

    invoke-interface {v3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->lastTimeUpdate:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has updated with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "NEW"

    goto :goto_0

    :cond_1
    const-string p1, "EXPIRED"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p0

    :cond_2
    return-object p1
.end method
