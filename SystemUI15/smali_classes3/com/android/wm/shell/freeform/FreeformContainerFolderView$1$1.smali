.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic val$vh:Lcom/android/internal/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$1;->val$vh:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$1;->val$vh:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
