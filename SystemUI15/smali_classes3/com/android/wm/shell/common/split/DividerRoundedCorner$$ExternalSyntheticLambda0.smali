.class public final synthetic Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;->f$1:F

    sget v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mTopLeftCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;

    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->createTmpPath(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;FF)V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mTopRightCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;

    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->createTmpPath(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;FF)V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mBottomLeftCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;

    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->createTmpPath(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;FF)V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mBottomRightCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;

    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->createTmpPath(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;FF)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
