.class public final synthetic Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method
