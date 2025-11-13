.class Landroid/widget/RelativeLayout$ExpandTopBarRunnable;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandTopBarRunnable"
.end annotation


# instance fields
.field blacklist mLastOffset:I

.field final synthetic blacklist this$0:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ExpandTopBarRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;-><init>(Landroid/widget/RelativeLayout;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    iget-object v0, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;-><init>(Landroid/widget/RelativeLayout$ExpandTopBarRunnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$2;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$2;-><init>(Landroid/widget/RelativeLayout$ExpandTopBarRunnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
