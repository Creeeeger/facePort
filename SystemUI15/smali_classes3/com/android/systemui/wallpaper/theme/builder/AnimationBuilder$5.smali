.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget v3, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
