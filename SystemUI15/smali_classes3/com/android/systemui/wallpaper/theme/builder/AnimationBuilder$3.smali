.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    iget v4, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    sub-float/2addr p0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v3

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v2, p0

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
