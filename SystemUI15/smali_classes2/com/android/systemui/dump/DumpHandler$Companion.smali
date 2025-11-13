.class public final Lcom/android/systemui/dump/DumpHandler$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/dump/DumpHandler$Companion;-><init>()V

    return-void
.end method

.method public static final access$findBestTargetMatch(Lcom/android/systemui/dump/DumpHandler$Companion;Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/dump/DumpsysEntry;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance p1, Lcom/android/systemui/dump/DumpHandler$Companion$findBestTargetMatch$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/dump/DumpHandler$Companion$findBestTargetMatch$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance p1, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {p1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p0

    check-cast p2, Lcom/android/systemui/dump/DumpsysEntry;

    invoke-interface {p2}, Lcom/android/systemui/dump/DumpsysEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    :cond_2
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/dump/DumpsysEntry;

    invoke-interface {v1}, Lcom/android/systemui/dump/DumpsysEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_3

    move-object p0, v0

    move p2, v1

    :cond_3
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    check-cast p0, Lcom/android/systemui/dump/DumpsysEntry;

    return-object p0
.end method

.method public static final access$matchesAny(Lcom/android/systemui/dump/DumpHandler$Companion;Lcom/android/systemui/dump/DumpsysEntry;Ljava/util/Collection;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Iterable;

    instance-of p0, p2, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/android/systemui/dump/DumpsysEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static dumpBuffer(Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;Ljava/io/PrintWriter;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;->name:Ljava/lang/String;

    const/16 v1, 0x7f

    invoke-static {v1, v0}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/android/systemui/dump/DumpHandler$Companion;->preamble(Ljava/io/PrintWriter;Lcom/android/systemui/dump/DumpsysEntry;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;->buffer:Lcom/android/systemui/log/LogBuffer;

    monitor-enter v2

    const/4 v3, 0x0

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v4, v2, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {v4}, Lcom/android/systemui/common/buffer/RingBuffer;->getSize()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    iget-object p2, v2, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {p2}, Lcom/android/systemui/common/buffer/RingBuffer;->getSize()I

    move-result p2

    :goto_1
    if-ge v3, p2, :cond_1

    iget-object v4, v2, Lcom/android/systemui/log/LogBuffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/systemui/common/buffer/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    invoke-interface {v4, p1}, Lcom/android/systemui/log/core/LogMessage;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p1, p0, v2, v3}, Lcom/android/systemui/dump/DumpHandler$Companion;->footer(Ljava/io/PrintWriter;Lcom/android/systemui/dump/DumpsysEntry;J)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    monitor-exit v2

    throw p0
.end method

.method public static dumpDumpable(Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    const/16 v1, 0x7f

    invoke-static {v1, v0}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/android/systemui/dump/DumpHandler$Companion;->preamble(Ljava/io/PrintWriter;Lcom/android/systemui/dump/DumpsysEntry;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->dumpable:Lcom/android/systemui/Dumpable;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p1, p0, v2, v3}, Lcom/android/systemui/dump/DumpHandler$Companion;->footer(Ljava/io/PrintWriter;Lcom/android/systemui/dump/DumpsysEntry;J)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static dumpEntries(Ljava/util/Collection;Ljava/io/PrintWriter;)V
    .locals 3

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry;

    sget-object v1, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpDumpable(Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    invoke-static {v0, p1, v2}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpBuffer(Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/dump/DumpHandler$Companion;->dumpTableBuffer(Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static dumpTableBuffer(Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;->name:Ljava/lang/String;

    const/16 v1, 0x7f

    invoke-static {v1, v0}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/android/systemui/dump/DumpHandler$Companion;->preamble(Ljava/io/PrintWriter;Lcom/android/systemui/dump/DumpsysEntry;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;->table:Lcom/android/systemui/log/table/TableLogBuffer;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/log/table/TableLogBuffer;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p1, p0, v2, v3}, Lcom/android/systemui/dump/DumpHandler$Companion;->footer(Ljava/io/PrintWriter;Lcom/android/systemui/dump/DumpsysEntry;J)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static footer(Ljava/io/PrintWriter;Lcom/android/systemui/dump/DumpsysEntry;J)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    check-cast p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    iget-object v0, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " dump took "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "ms -- "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    iget-object p1, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;->priority:Lcom/android/systemui/dump/DumpPriority;

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x19

    cmp-long p1, p2, v0

    if-lez p1, :cond_1

    const-string p1, " -- warning: individual dump time exceeds 5% of total CRITICAL dump time!"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static preamble(Ljava/io/PrintWriter;Lcom/android/systemui/dump/DumpsysEntry;)V
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;

    :goto_0
    const-string v1, "----------------------------------------------------------------------------"

    const-string v2, ":"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-interface {p1}, Lcom/android/systemui/dump/DumpsysEntry;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    check-cast p1, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    iget-object p1, p1, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "BUFFER "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
