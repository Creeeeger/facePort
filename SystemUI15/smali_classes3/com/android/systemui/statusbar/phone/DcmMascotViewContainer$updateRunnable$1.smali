.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->cancelUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

    if-nez v5, :cond_2

    move-object v5, v0

    :cond_2
    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p0

    :goto_2
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    :cond_6
    :goto_3
    return-void
.end method
