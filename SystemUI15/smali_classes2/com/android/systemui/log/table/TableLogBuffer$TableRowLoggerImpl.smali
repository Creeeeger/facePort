.class public final Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public columnPrefix:Ljava/lang/String;

.field public isInitial:Z

.field public final tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

.field public timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;ZLcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->timestamp:J

    iput-object p3, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->columnPrefix:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->isInitial:Z

    iput-object p5, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    return-void
.end method


# virtual methods
.method public final logChange(ILjava/lang/String;)V
    .locals 6

    iget-wide v1, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->timestamp:J

    iget-object v3, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->columnPrefix:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-boolean v5, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->isInitial:Z

    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TableLogBuffer#logChange(int)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/log/table/TableChange$DataType;->INT:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object v0, p2, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object p1, p2, Lcom/android/systemui/log/table/TableChange;->int:Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/android/systemui/log/table/TableLogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/table/TableChange;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final logChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-wide v1, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->timestamp:J

    iget-object v3, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->columnPrefix:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->isInitial:Z

    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TableLogBuffer#logChange(string)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/table/TableChange$DataType;->STRING:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object v0, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    if-eqz p2, :cond_0

    const/16 v0, 0x1f4

    invoke-static {v0, p2}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

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

.method public final logChange(Ljava/lang/String;Z)V
    .locals 6

    iget-wide v1, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->timestamp:J

    iget-object v3, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->columnPrefix:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->isInitial:Z

    iget-object p0, p0, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TableLogBuffer#logChange(boolean)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/log/table/TableLogBuffer;->obtain(JLjava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/log/table/TableChange;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/table/TableChange$DataType;->BOOLEAN:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-object v0, p1, Lcom/android/systemui/log/table/TableChange;->type:Lcom/android/systemui/log/table/TableChange$DataType;

    iput-boolean p2, p1, Lcom/android/systemui/log/table/TableChange;->bool:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/table/TableLogBuffer;->echoToDesiredEndpoints(Lcom/android/systemui/log/table/TableChange;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
