.class final Landroidx/window/embedding/SplitController$splitInfoList$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/embedding/SplitController$splitInfoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/window/embedding/SplitController;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/SplitController;Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/embedding/SplitController;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/embedding/SplitController$splitInfoList$1$2;->this$0:Landroidx/window/embedding/SplitController;

    iput-object p2, p0, Landroidx/window/embedding/SplitController$splitInfoList$1$2;->$listener:Landroidx/core/util/Consumer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/window/embedding/SplitController$splitInfoList$1$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/SplitController$splitInfoList$1$2;->this$0:Landroidx/window/embedding/SplitController;

    invoke-static {v0}, Landroidx/window/embedding/SplitController;->access$getEmbeddingBackend$p(Landroidx/window/embedding/SplitController;)Landroidx/window/embedding/EmbeddingBackend;

    move-result-object v0

    iget-object p0, p0, Landroidx/window/embedding/SplitController$splitInfoList$1$2;->$listener:Landroidx/core/util/Consumer;

    invoke-interface {v0, p0}, Landroidx/window/embedding/EmbeddingBackend;->removeSplitListenerForActivity(Landroidx/core/util/Consumer;)V

    return-void
.end method
