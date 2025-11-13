.class public Lcom/android/systemui/biometrics/BiometricMessageDeferral;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final acquiredInfoToFrequency:Ljava/util/Map;

.field public final acquiredInfoToHelpString:Ljava/util/Map;

.field public final acquiredInfoToIgnore:Ljava/util/Set;

.field public final logBuffer:Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;

.field public final messagesToDefer:Ljava/util/Set;

.field public mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

.field public final threshold:F

.field public totalFrames:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;FLcom/android/keyguard/logging/BiometricMessageDeferralLogger;Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;F",
            "Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->messagesToDefer:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToIgnore:Ljava/util/Set;

    iput p3, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->threshold:F

    iput-object p4, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->logBuffer:Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToHelpString:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->messagesToDefer:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "messagesToDefer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->totalFrames:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "totalFrames="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "threshold="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->threshold:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDeferredMessage()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->totalFrames:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->threshold:F

    mul-float/2addr v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToHelpString:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final processFrame(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->messagesToDefer:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToIgnore:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->logBuffer:Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->logFrameIgnored(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->totalFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->totalFrames:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->messagesToDefer:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-le v0, v2, :cond_3

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->totalFrames:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p1, v0, p0}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->logFrameProcessed(IILjava/lang/String;)V

    return-void
.end method

.method public final reset$1()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->totalFrames:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToHelpString:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->logBuffer:Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v2, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->tag:Ljava/lang/String;

    const-string v3, "reset"

    invoke-virtual {v2, p0, v1, v3, v0}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final updateMessage(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->messagesToDefer:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToHelpString:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->logBuffer:Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;->logUpdateMessage(ILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricMessageDeferral;->acquiredInfoToHelpString:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
