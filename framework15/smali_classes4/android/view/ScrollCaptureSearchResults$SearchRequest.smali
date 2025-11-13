.class Landroid/view/ScrollCaptureSearchResults$SearchRequest;
.super Ljava/lang/Object;
.source "ScrollCaptureSearchResults.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mTarget:Landroid/view/ScrollCaptureTarget;

.field final synthetic blacklist this$0:Landroid/view/ScrollCaptureSearchResults;


# direct methods
.method public static synthetic blacklist $r8$lambda$JjNAoEgJ3dCHOZZUjkkHcMgIOsM(Landroid/view/ScrollCaptureSearchResults$SearchRequest;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->lambda$accept$0(Landroid/graphics/Rect;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->this$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    return-void
.end method

.method private blacklist consume(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->this$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$fgetmCancel(Landroid/view/ScrollCaptureSearchResults;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$smnullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0, p1}, Landroid/view/ScrollCaptureTarget;->setScrollBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->updatePositionInWindow()V

    :cond_1
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->this$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$fgetmCompleted(Landroid/view/ScrollCaptureSearchResults;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$fputmCompleted(Landroid/view/ScrollCaptureSearchResults;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->this$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$fgetmCompleted(Landroid/view/ScrollCaptureSearchResults;)I

    move-result v0

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->this$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-static {v1}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$fgetmTargets(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->this$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$msignalComplete(Landroid/view/ScrollCaptureSearchResults;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$accept$0(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->consume(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->this$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$fgetmCancel(Landroid/view/ScrollCaptureSearchResults;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->this$0:Landroid/view/ScrollCaptureSearchResults;

    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->-$$Nest$fgetmExecutor(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/view/ScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;-><init>(Landroid/view/ScrollCaptureSearchResults$SearchRequest;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->accept(Landroid/graphics/Rect;)V

    return-void
.end method
