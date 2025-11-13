.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationGroupHeaderViewWrapper$1;
.super Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationGroupHeaderViewWrapper;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 0

    const/4 p0, 0x6

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    const/4 p0, 0x1

    return p0
.end method

.method public final transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 0

    const/4 p0, 0x6

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return p2
.end method
