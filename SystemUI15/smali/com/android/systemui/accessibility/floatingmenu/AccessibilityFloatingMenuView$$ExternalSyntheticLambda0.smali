.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-boolean v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    sub-float/2addr v3, p1

    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr p1, v3

    float-to-int p0, p1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    sub-float/2addr v3, p1

    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr p1, v3

    float-to-int p0, p1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method
