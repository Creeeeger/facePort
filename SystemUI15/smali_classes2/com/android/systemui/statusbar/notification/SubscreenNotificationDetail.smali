.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;
.super Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;)V

    return-void
.end method


# virtual methods
.method public final makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->makePopupDetailView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/widget/FrameLayout;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mOnTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public final performClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->detailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
