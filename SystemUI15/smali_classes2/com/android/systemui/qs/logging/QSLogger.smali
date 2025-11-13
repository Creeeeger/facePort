.class public final Lcom/android/systemui/qs/logging/QSLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    new-instance p2, Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    const-string v0, "QSLog"

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/log/ConstantStringsLoggerImpl;-><init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    return-void
.end method

.method public static toStateString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "wrong state"

    goto :goto_0

    :cond_0
    const-string p0, "active"

    goto :goto_0

    :cond_1
    const-string p0, "inactive"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "unavailable"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/qs/logging/QSLogger$d$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/logging/QSLogger$d$2;-><init>(Ljava/lang/String;)V

    const-string p2, "QSLog"

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logAllTilesChangeListening(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logAllTilesChangeListening$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logAllTilesChangeListening$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object p3, v0

    check-cast p3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, p3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/qs/logging/QSLogger$logException$2;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/logging/QSLogger$logException$2;-><init>(Ljava/lang/String;)V

    const-string p1, "QSLog"

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logHandleClick(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logHandleClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logHandleClick$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logHandleLongClick(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logHandleLongClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logHandleLongClick$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logHandleSecondaryClick(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logHandleSecondaryClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logHandleSecondaryClick$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logInternetTileUpdate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logInternetTileUpdate$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logInternetTileUpdate$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object p3, p2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logPanelExpanded(Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logPanelExpanded$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logPanelExpanded$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, p1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileAdded(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileAdded$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileAdded$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileChangeListening(Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileChangeListening$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileChangeListening$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileClick(Ljava/lang/String;III)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileClick$2;

    const-string v2, "QSLog"

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p4, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileDestroyed$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDestroyed$2;

    const-string v2, "QSLog"

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileDistributed(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileDistributed$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDistributed$2;

    const-string v2, "QSLog"

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileDistributionInProgress(II)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, p1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileLongClick(Ljava/lang/String;III)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;

    const-string v2, "QSLog"

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p4, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileSecondaryClick(Ljava/lang/String;III)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileSecondaryClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileSecondaryClick$2;

    const-string v2, "QSLog"

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p4, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTileUpdated(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileUpdated$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileUpdated$2;

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "QSLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iput-object v3, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
