.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lnotification/src/com/android/systemui/PromptCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onComplete(Ljava/lang/StringBuilder;)V
    .locals 5

    const-string v0, "S.S.N."

    const-string v1, "SrPromptProcessor onComplete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    invoke-interface {v1}, Lnotification/src/com/android/systemui/BasePromptProcessor;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "SrPromptProcessor onComplete() - detail notification key does not match"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const-string v1, "SrPromptProcessor onComplete() : SmartReplayStatus is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v4, :cond_4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    if-ne v4, v2, :cond_4

    const-string v2, "SrPromptProcessor onComplete() - isShownReplyButtonWindow"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->setSmartReplyResultValue(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showSmartReplyResultComplete(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SrPromptProcessor onFailure() : "

    const-string v1, "S.S.N."

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const-string p1, "SrPromptProcessor onFailure() : SmartReplayStatus is not valid"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->resetProgressScaleAnimation()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressingVi:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v0, "SrPromptProcessor onFailure() - isShownReplyButtonWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->setSmartReplyResultValue(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "SrPromptProcessor onFailure() - it\'s previous fail message"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showSmartReplyResultFailure(Ljava/lang/String;)V

    const-string p0, "QPN102"

    const-string p1, "QPNE0216"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
