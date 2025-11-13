.class public final Landroidx/appcompat/widget/SeslAbsSeekBar$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$2;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$2;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$2;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    iget p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    int-to-float p1, p1

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v1, v0, p1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
