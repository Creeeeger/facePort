.class public final Lcom/android/systemui/shade/NotificationPanelViewController$NsslHeightChangedListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$NsslHeightChangedListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$NsslHeightChangedListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public final onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$NsslHeightChangedListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p2

    instance-of v1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    if-eq p1, p2, :cond_3

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    const-string p1, "onHeightChanged"

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountCallStack:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    return-void
.end method

.method public final onReset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    return-void
.end method
