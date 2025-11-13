.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingExpandViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method public final resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;->resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const-string v0, "ongoingExpandPrimaryIcon"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;->mLeftIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const-string v0, "expandPrimary"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;->mPrimary:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const-string v0, "expandSecondary"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;->mSecondary:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const-string v0, "expandSecondaryIcon"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;->mSecondaryIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;->mData:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationOngoingViewWrapper;->mSecondary:Landroid/widget/TextView;

    :cond_0
    return-void
.end method
