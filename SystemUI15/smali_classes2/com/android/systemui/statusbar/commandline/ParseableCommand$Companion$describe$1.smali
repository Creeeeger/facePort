.class final Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;
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
.field final synthetic $pw:Landroid/util/IndentingPrintWriter;

.field final synthetic $this_describe:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lcom/android/systemui/statusbar/commandline/Describable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Landroid/util/IndentingPrintWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/systemui/statusbar/commandline/Describable;",
            ">;",
            "Landroid/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;->$this_describe:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;->$pw:Landroid/util/IndentingPrintWriter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;->$this_describe:Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$Companion$describe$1;->$pw:Landroid/util/IndentingPrintWriter;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/commandline/Describable;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/commandline/Describable;->describe(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
