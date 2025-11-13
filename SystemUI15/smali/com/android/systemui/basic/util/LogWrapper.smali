.class public final Lcom/android/systemui/basic/util/LogWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logger:Lcom/android/systemui/basic/util/LogWrapper$logger$1;

.field public final module:Lcom/android/systemui/basic/util/ModuleType;

.field public final serviceLogger:Lcom/android/systemui/log/SamsungServiceLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/basic/util/LogWrapper;->module:Lcom/android/systemui/basic/util/ModuleType;

    iput-object p2, p0, Lcom/android/systemui/basic/util/LogWrapper;->serviceLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    new-instance p1, Lcom/android/systemui/basic/util/LogWrapper$logger$1;

    invoke-direct {p1}, Lcom/android/systemui/basic/util/LogWrapper$logger$1;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/basic/util/LogWrapper;->logger:Lcom/android/systemui/basic/util/LogWrapper$logger$1;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->toModuleTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->logger:Lcom/android/systemui/basic/util/LogWrapper$logger$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->toModuleTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->logger:Lcom/android/systemui/basic/util/LogWrapper$logger$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->toModuleTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->logger:Lcom/android/systemui/basic/util/LogWrapper$logger$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/basic/util/LogWrapper;->serviceLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->module:Lcom/android/systemui/basic/util/ModuleType;

    invoke-virtual {p0}, Lcom/android/systemui/basic/util/ModuleType;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final toModuleTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->module:Lcom/android/systemui/basic/util/ModuleType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->toModuleTag(Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->logger:Lcom/android/systemui/basic/util/LogWrapper$logger$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
