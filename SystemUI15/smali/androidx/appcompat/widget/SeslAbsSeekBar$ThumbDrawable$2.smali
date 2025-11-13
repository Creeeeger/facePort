.class public final Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$1:Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$2;->this$1:Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$2;->this$1:Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;

    float-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
