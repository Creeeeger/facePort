.class public final Lcom/android/wm/shell/common/split/DividerView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$9;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$9;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v0, p1, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/DividerView;->updateCursorType()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz p1, :cond_1

    const/16 v0, 0x2789

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$9;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/DividerView;->updateBackgroundColor(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$9;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mCorners:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerBarBackground:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
