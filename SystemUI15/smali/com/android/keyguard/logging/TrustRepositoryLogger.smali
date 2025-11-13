.class public final Lcom/android/keyguard/logging/TrustRepositoryLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/logging/TrustRepositoryLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/logging/TrustRepositoryLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final activeUnlockModelEmitted(Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$activeUnlockModelEmitted$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$activeUnlockModelEmitted$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "TrustRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iget v2, p1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;->userId:I

    iput v2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;->isRunning:Z

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final isCurrentUserActiveUnlockRunning(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserActiveUnlockRunning$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserActiveUnlockRunning$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "TrustRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final isCurrentUserTrustManaged(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserTrustManaged$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserTrustManaged$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "TrustRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final isCurrentUserTrusted(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserTrusted$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$isCurrentUserTrusted$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "TrustRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final onTrustChanged(ZZIILjava/util/List;)V
    .locals 10

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustChanged$2;

    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "TrustRepositoryLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput p3, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput p4, v1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    if-eqz p5, :cond_0

    move-object v4, p5

    check-cast v4, Ljava/lang/Iterable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3f

    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iput-object v3, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final onTrustManagedChanged(ZI)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustManagedChanged$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$onTrustManagedChanged$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "TrustRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, p1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final trustManagedModelEmitted(Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$trustManagedModelEmitted$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$trustManagedModelEmitted$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "TrustRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iget-boolean v2, p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->isTrustManaged:Z

    iput-boolean v2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->userId:I

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final trustModelEmitted(Lcom/android/systemui/keyguard/shared/model/TrustModel;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/TrustRepositoryLogger$trustModelEmitted$2;->INSTANCE:Lcom/android/keyguard/logging/TrustRepositoryLogger$trustModelEmitted$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/TrustRepositoryLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "TrustRepositoryLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iget v2, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;->userId:I

    iput v2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;->isTrusted:Z

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
