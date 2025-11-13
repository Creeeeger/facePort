.class public final Lcom/android/systemui/log/table/TableLogBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/log/TableLogBufferBase;


# instance fields
.field public final buffer:Lcom/android/systemui/common/buffer/RingBuffer;

.field public final lastEvictedValues:Ljava/util/Map;

.field public final localLogcat:Lcom/android/systemui/log/table/LogProxy;

.field public final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

.field public final name:Ljava/lang/String;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final tempRow:Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/log/LogcatEchoTracker;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/table/LogProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p4, p0, Lcom/android/systemui/log/table/TableLogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    iput-object p7, p0, Lcom/android/systemui/log/table/TableLogBuffer;->localLogcat:Lcom/android/systemui/log/table/LogProxy;

    if-lez p1, :cond_0

    new-instance p2, Lcom/android/systemui/common/buffer/RingBuffer;

    sget-object p3, Lcom/android/systemui/log/table/TableLogBuffer$buffer$1;->INSTANCE:Lcom/android/systemui/log/table/TableLogBuffer$buffer$1;

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/common/buffer/RingBuffer;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/table/TableLogBuffer;->lastEvictedValues:Ljava/util/Map;

    new-instance p1, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;

    const-string p5, ""

    const/4 p6, 0x0

    const-wide/16 p3, 0x0

    move-object p2, p1

    move-object p7, p0

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;-><init>(JLjava/lang/String;ZLcom/android/systemui/log/table/TableLogBuffer;)V

    iput-object p1, p0, Lcom/android/systemui/log/table/TableLogBuffer;->tempRow:Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/log/LogcatEchoTracker;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/table/LogProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/log/table/LogProxyDefault;

    invoke-direct {v0}, Lcom/android/systemui/log/table/LogProxyDefault;-><init>()V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/log/table/TableLogBuffer;-><init>(ILjava/lang/String;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/log/LogcatEchoTracker;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/table/LogProxy;)V

    return-void
.end method

.method public static dump(Lcom/android/systemui/log/table/TableChange;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/log/table/TableChange;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/log/table/TableLogBufferKt;->TABLE_LOG_DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/log/table/TableChange;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/log/table/TableChange;->getVal()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p2, "SystemUI StateChangeTableSection START: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p2, "version "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->lastEvictedValues:Ljava/util/Map;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Lcom/android/systemui/log/table/TableLogBuffer$dump$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/android/systemui/log/table/TableLogBuffer$dump$$inlined$sortedBy$1;-><init>()V

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/table/TableChange;

    invoke-static {v0, p1}, Lcom/android/systemui/log/table/TableLogBuffer;->dump(Lcom/android/systemui/log/table/TableChange;Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {p2}, Lcom/android/systemui/common/buffer/RingBuffer;->getSize()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/log/table/TableLogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/common/buffer/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/log/table/TableChange;

    invoke-static {v1, p1}, Lcom/android/systemui/log/table/TableLogBuffer;->dump(Lcom/android/systemui/log/table/TableChange;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "SystemUI StateChangeTableSection END: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final echoToDesiredEndpoints(Lcom/android/systemui/log/table/TableChange;)V
    .locals 5

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, p0, Lcom/android/systemui/log/table/TableLogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    iget-object v2, p0, Lcom/android/systemui/log/table/TableLogBuffer;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/log/LogcatEchoTracker;->isBufferLoggable(Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/android/systemui/log/LogcatEchoTracker;->isTagLoggable(Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/log/table/TableChange;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/log/table/TableLogBufferKt;->TABLE_LOG_DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    iget-wide v3, p1, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/log/table/TableChange;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/log/table/TableChange;->getVal()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->localLogcat:Lcom/android/systemui/log/table/LogProxy;

    check-cast p0, Lcom/android/systemui/log/table/LogProxyDefault;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "TableLogBuffer#logChange(int)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/log/table/TableChange$DataType;->INT:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p2, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p3, p1, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/table/TableLogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/table/TableChange;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "TableLogBuffer#logChange(string)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/log/table/TableChange$DataType;->STRING:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p2, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    if-eqz p3, :cond_0

    const/16 p2, 0x1f4

    invoke-static {p2, p3}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p1, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/table/TableLogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/table/TableChange;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "TableLogBuffer#logChange(boolean)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/log/table/TableChange$DataType;->BOOLEAN:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p2, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-boolean p3, p1, Lcom/android/systemui/log/table/TableChange;->bool:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/table/TableLogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/table/TableChange;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final declared-synchronized obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "|"

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p4, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/table/TableChange;

    invoke-virtual {v0}, Lcom/android/systemui/log/table/TableChange;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer;->saveEvictedValue(Lcom/android/systemui/log/table/TableChange;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/table/TableChange;->reset(JLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "columnName cannot contain | but was "

    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "columnPrefix cannot contain | but was "

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final saveEvictedValue(Lcom/android/systemui/log/table/TableChange;)V
    .locals 14

    const-string v0, "TableLogBuffer#saveEvictedValue"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/log/table/TableChange;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/log/table/TableLogBuffer;->lastEvictedValues:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/log/table/TableChange;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/log/table/TableChange;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xff

    const/4 v13, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/android/systemui/log/table/TableChange;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/android/systemui/log/table/TableChange$DataType;ZLjava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer;->lastEvictedValues:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v3, p1, Lcom/android/systemui/log/table/TableChange;->timestamp:J

    iget-object v5, p1, Lcom/android/systemui/log/table/TableChange;->columnPrefix:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/systemui/log/table/TableChange;->columnName:Ljava/lang/String;

    iget-boolean v7, p1, Lcom/android/systemui/log/table/TableChange;->isInitial:Z

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/log/table/TableChange;->reset(JLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    sget-object v0, Lcom/android/systemui/log/table/TableChange$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p0, p1, Lcom/android/systemui/log/table/TableChange;->bool:Z

    sget-object p1, Lcom/android/systemui/log/table/TableChange$DataType;->BOOLEAN:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p1, v1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-boolean p0, v1, Lcom/android/systemui/log/table/TableChange;->bool:Z

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    sget-object p1, Lcom/android/systemui/log/table/TableChange$DataType;->INT:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p1, v1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p0, v1, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/log/table/TableChange$DataType;->STRING:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p1, v1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    if-eqz p0, :cond_4

    const/16 p1, 0x1f4

    invoke-static {p1, p0}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v1, Lcom/android/systemui/log/table/TableChange;->str:Ljava/lang/String;

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
