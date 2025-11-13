.class public final Lcom/android/wm/shell/common/DismissView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/DismissView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DismissView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissView$1;->this$0:Lcom/android/wm/shell/common/DismissView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    sget p1, Lcom/android/wm/shell/common/DismissView;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAnimationEnd, mVisible="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView$1;->this$0:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    const-string v1, "DismissView"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/DismissView$1;->this$0:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v0, p1, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/common/DismissView;->mDismissArea:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissView$1;->this$0:Lcom/android/wm/shell/common/DismissView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

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
