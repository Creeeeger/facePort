.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic $history:Ljava/lang/String;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->$history:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$isSupportableLanguage(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isComplete()Z

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "callAIReply() - successful : "

    const-string v7, ", isComplete : "

    const-string v8, ", result : "

    invoke-static {v6, v7, v8, v3, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isSupport : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S.S.N."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->handleProgressLayout(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->$history:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p0, "callAIReply - not Support"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->handleProgressLayout(Z)V

    iput v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    const-string/jumbo p0, "unsupportedLanguage"

    invoke-virtual {v2, p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    iget-boolean p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    if-eqz p0, :cond_3

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    const/16 p0, 0x8

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    const-string p0, ""

    invoke-virtual {v2, p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const p1, 0x7f131309

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showErrorMessageWithAnim(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iput v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    :cond_3
    :goto_0
    return-void
.end method
