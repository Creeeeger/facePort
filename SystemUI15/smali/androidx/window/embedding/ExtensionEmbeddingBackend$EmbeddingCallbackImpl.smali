.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;


# instance fields
.field public final synthetic this$0:Landroidx/window/embedding/ExtensionEmbeddingBackend;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->this$0:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-void
.end method


# virtual methods
.method public final onSplitInfoChanged(Ljava/util/List;)V
    .locals 7

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->this$0:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->splitChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/window/embedding/SplitInfo;

    iget-object v5, v4, Landroidx/window/embedding/SplitInfo;->primaryActivityStack:Landroidx/window/embedding/ActivityStack;

    iget-object v5, v5, Landroidx/window/embedding/ActivityStack;->activitiesInProcess:Ljava/util/List;

    iget-object v6, v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->activity:Landroid/app/Activity;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Landroidx/window/embedding/SplitInfo;->secondaryActivityStack:Landroidx/window/embedding/ActivityStack;

    iget-object v4, v4, Landroidx/window/embedding/ActivityStack;->activitiesInProcess:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->lastValue:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iput-object v1, v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->lastValue:Ljava/util/List;

    iget-object v2, v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    return-void
.end method
