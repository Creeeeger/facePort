.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPrvAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelVisibility(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPrvAlpha:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_4

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    goto :goto_2

    :cond_4
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    goto :goto_2

    :cond_5
    :goto_1
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    :goto_2
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPrvAlpha:F

    :goto_3
    return-void
.end method
