.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsLegacy:Z

.field public final mLegacyColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604f7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mLegacyColor:I

    return-void
.end method


# virtual methods
.method public final getCustomBackgroundColor()I
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsLegacy:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mLegacyColor:I

    return p0

    :cond_0
    return v0
.end method

.method public final onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 6

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->needsInversion(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->invertViewLuminosity(Landroid/view/View;)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v1, p1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    invoke-static {v1, p1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    if-eqz v1, :cond_0

    aget v1, p1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    aput v2, p1, v0

    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    :cond_0
    return-void
.end method

.method public final setLegacy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsLegacy:Z

    return-void
.end method

.method public final setNotificationFaded(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
