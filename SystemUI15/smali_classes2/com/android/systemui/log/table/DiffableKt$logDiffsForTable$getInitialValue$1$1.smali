.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $initialValue:Lcom/android/systemui/log/table/Diffable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/log/table/Diffable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/Diffable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/log/table/Diffable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1$1;->$initialValue:Lcom/android/systemui/log/table/Diffable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;

    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$getInitialValue$1$1;->$initialValue:Lcom/android/systemui/log/table/Diffable;

    invoke-interface {p0, p1}, Lcom/android/systemui/log/table/Diffable;->logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
