.class public final Lcom/android/wm/shell/common/split/DividerView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$8;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$8;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    sget-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/DividerView;->updateBackgroundColor(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$8;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mCorners:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerBarBackground:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
