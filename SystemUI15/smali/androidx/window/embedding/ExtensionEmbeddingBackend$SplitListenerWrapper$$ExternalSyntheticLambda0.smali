.class public final synthetic Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    iput-object p2, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper$$ExternalSyntheticLambda0;->f$0:Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v0, v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->callback:Landroidx/core/util/Consumer;

    invoke-interface {v0, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
