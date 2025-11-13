.class public final Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object p1, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mAnimationEndCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    const-string p1, "SwipeRefreshLayout"

    const-string v0, "OnAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object p1, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
