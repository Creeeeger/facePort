.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationGroupHeaderViewWrapper$2;
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
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const p1, 0x3f59999a    # 0.85f

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-static {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x1

    return p0
.end method
