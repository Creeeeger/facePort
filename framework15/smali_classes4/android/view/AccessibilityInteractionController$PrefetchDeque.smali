.class Landroid/view/AccessibilityInteractionController$PrefetchDeque;
.super Ljava/util/ArrayDeque;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/view/AccessibilityInteractionController$DequeNode;",
        ">",
        "Ljava/util/ArrayDeque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist mPrefetchOutput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStrategy:I

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput p2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mStrategy:I

    iput-object p3, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    return-void
.end method


# virtual methods
.method blacklist getNext()Landroid/view/AccessibilityInteractionController$DequeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$DequeNode;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$DequeNode;

    return-object v0
.end method

.method blacklist isStack()Z
    .locals 1

    iget v0, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mStrategy:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist performTraversalAndPrefetch()V
    .locals 4

    nop

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->getNext()Landroid/view/AccessibilityInteractionController$DequeNode;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/AccessibilityInteractionController$DequeNode;->getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v2}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmPrefetcher(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    move-result-object v2

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0, v1, p0}, Landroid/view/AccessibilityInteractionController$DequeNode;->addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    throw v0
.end method
