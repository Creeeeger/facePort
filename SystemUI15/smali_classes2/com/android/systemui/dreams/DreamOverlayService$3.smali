.class public final Lcom/android/systemui/dreams/DreamOverlayService$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$3;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$3;->this$0:Lcom/android/systemui/dreams/DreamOverlayService;

    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/dreams/DreamOverlayService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayService$3;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
