.class public final synthetic Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

.field public final synthetic f$1:Landroidx/window/embedding/EmbeddingCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;Landroidx/window/embedding/EmbeddingCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;->f$0:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;->f$1:Landroidx/window/embedding/EmbeddingCompat;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;->f$0:Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat$$ExternalSyntheticLambda1;->f$1:Landroidx/window/embedding/EmbeddingCompat;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat;->adapter:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->translate(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-virtual {v0, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->onSplitInfoChanged(Ljava/util/List;)V

    return-void
.end method
