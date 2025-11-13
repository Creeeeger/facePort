.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$5;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$5;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
