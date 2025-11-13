.class public final synthetic Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$1:I

    iput p3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$2:I

    iput p4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$3:I

    iput p5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$4:I

    iput-boolean p6, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$1:I

    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$2:I

    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$3:I

    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$4:I

    iget-boolean v5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;->f$5:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, p1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p1

    float-to-int v1, p1

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, p1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p1

    float-to-int v2, p1

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v3, p1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p1

    float-to-int v3, p1

    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, p1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->applyClippingImmediately(IIIIZ)V

    return-void
.end method
