.class Landroid/view/InsetsController$2;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mPendingRemoveIndexes:Landroid/util/IntArray;

.field final synthetic blacklist this$0:Landroid/view/InsetsController;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/InsetsController$2;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method public blacklist onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->removeSourceAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    return-void
.end method

.method public blacklist onIdNotFoundInState2(ILandroid/view/InsetsSource;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    sget v1, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController$2;->mPendingRemoveIndexes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method
