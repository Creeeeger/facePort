.class public final Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$FadeOutAndDownWithTitleTransformation;
.super Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$FadeOutAndDownWithTitleTransformation;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$FadeOutAndDownWithTitleTransformation;->mView:Landroid/view/View;

    invoke-static {p0, p3, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    if-eqz p2, :cond_0

    const/16 p0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v1, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_0
    return v0
.end method

.method public final transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$FadeOutAndDownWithTitleTransformation;->mView:Landroid/view/View;

    invoke-static {p0, p3, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    if-eqz p2, :cond_0

    const/16 p0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v1, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_0
    return v0
.end method
