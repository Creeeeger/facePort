.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;I)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotifShadeEventSource:Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;->setShadeEmptiedCallback(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;I)V

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;->setNotifRemovedByUserCallback(Ljava/lang/Runnable;)V

    sget v1, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionRefactor;->$r8$clinit:I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mInterruptSuppressor:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;->addLegacySuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-static {}, Landroid/app/Flags;->keyguardPrivateNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->init$11$1()V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iput p0, v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mUser:I

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    return-void
.end method
