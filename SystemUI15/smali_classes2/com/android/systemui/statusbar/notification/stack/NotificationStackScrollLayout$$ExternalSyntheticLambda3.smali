.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    sget-boolean p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->DEBUG_DISABLE_SHOW_NEW_NOTIF_ONLY:Z

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    iget p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iget p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method
