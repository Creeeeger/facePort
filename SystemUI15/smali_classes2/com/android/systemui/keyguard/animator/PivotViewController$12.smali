.class public final Lcom/android/systemui/keyguard/animator/PivotViewController$12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$12;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController$12;->this$0:Lcom/android/systemui/keyguard/animator/PivotViewController;

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    int-to-float v2, p0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    :goto_0
    neg-int p0, p0

    :goto_1
    int-to-float p0, p0

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget v2, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    int-to-float v3, v2

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v2

    goto :goto_2

    :cond_2
    iget p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    goto :goto_0

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
