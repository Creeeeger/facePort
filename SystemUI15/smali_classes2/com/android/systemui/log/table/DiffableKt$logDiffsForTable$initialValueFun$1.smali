.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;
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
.field final synthetic $columnName:Ljava/lang/String;

.field final synthetic $columnPrefix:Ljava/lang/String;

.field final synthetic $initialValue:Z

.field final synthetic $tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iput-object p2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$columnPrefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$columnName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$initialValue:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$columnPrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$columnName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$initialValue:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/log/table/TableLogBuffer;->logChange(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$1;->$initialValue:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
