.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public isSent:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic val$loggingKey:Ljava/lang/String;

.field public final synthetic val$word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->val$word:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->val$loggingKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->isSent:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->isSent:Z

    if-eqz p1, :cond_0

    const-string p0, "SubscreenNotificationDetailAdapter"

    const-string/jumbo p1, "send button is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->useHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setSmartReplyResultValue(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->val$word:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyNotification(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->isSent:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    const-string/jumbo p1, "type"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->val$loggingKey:Ljava/lang/String;

    const-string v0, "QPN102"

    const-string v1, "QPNE0211"

    invoke-static {v0, v1, p1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
