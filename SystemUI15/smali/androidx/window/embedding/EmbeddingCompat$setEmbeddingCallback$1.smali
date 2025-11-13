.class final Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;
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
.field final synthetic $embeddingCallback:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

.field final synthetic this$0:Landroidx/window/embedding/EmbeddingCompat;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;->$embeddingCallback:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;->this$0:Landroidx/window/embedding/EmbeddingCompat;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;->$embeddingCallback:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;->this$0:Landroidx/window/embedding/EmbeddingCompat;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p0, v0}, Landroidx/window/embedding/EmbeddingAdapter;->translate(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-virtual {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->onSplitInfoChanged(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
