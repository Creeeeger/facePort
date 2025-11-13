.class public final Lcom/android/systemui/statusbar/ViewTransformationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field public final synthetic val$notification:Lcom/android/systemui/statusbar/TransformableView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->val$notification:Lcom/android/systemui/statusbar/TransformableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->-$$Nest$mabortTransformations(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->val$notification:Lcom/android/systemui/statusbar/TransformableView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method
