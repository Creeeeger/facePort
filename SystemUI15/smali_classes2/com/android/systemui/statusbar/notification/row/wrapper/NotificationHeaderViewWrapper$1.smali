.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;
.super Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    instance-of p0, p0, Landroid/view/NotificationHeaderView;

    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    if-eqz p0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    sget-object p0, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasCustomTransformation()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
