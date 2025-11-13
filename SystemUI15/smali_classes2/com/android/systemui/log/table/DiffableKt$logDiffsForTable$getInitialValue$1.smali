.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $columnPrefix:Ljava/lang/String;

.field final synthetic $initialValue:Lcom/android/systemui/log/table/Diffable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/log/table/Diffable;"
        }
    .end annotation
.end field

.field final synthetic $tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/table/TableLogBuffer;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/table/Diffable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iput-object p2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;->$columnPrefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;->$initialValue:Lcom/android/systemui/log/table/Diffable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;->$columnPrefix:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1$1;

    iget-object v3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;->$initialValue:Lcom/android/systemui/log/table/Diffable;

    invoke-direct {v2, v3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1$1;-><init>(Lcom/android/systemui/log/table/Diffable;)V

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/log/table/TableLogBuffer;->tempRow:Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;

    iget-object v4, v0, Lcom/android/systemui/log/table/TableLogBuffer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v4}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->timestamp:J

    iput-object v1, v3, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->columnPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->isInitial:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1;->$initialValue:Lcom/android/systemui/log/table/Diffable;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
