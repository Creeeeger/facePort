.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $history:Ljava/lang/String;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic $it:Lcom/samsung/android/sdk/scs/base/tasks/Task;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->$history:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->$it:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->$history:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "S.S.N."

    const-string v1, "call textPrompting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSBForLog:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "textPrompting trimmed :\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSBForLog:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSBForLog:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnotification/src/com/android/systemui/BasePromptProcessor;->setNotificationKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->$it:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrResponseCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    invoke-interface {v1, v0, v2, p0}, Lnotification/src/com/android/systemui/BasePromptProcessor;->textPrompting(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;)V

    return-void
.end method
