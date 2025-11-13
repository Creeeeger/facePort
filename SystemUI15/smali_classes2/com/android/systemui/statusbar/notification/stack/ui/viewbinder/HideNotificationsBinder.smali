.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$bindHideState(Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Z)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateNotificationsContainerVisibility(ZZ)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSuppressChildrenMeasureAndLayout:Z

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean p0, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSuppressChildrenMeasureAndLayout:Z

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestLayout()V

    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder$bindHideState$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/HideNotificationsBinder$bindHideState$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1, p0}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    :goto_0
    return-void
.end method
