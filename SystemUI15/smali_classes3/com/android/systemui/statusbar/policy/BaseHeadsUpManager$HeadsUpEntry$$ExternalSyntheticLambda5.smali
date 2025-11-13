.class public final synthetic Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v1, "createRemoveRunnable"

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->removeEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mCancelRemoveRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mCancelRemoveRunnable:Ljava/lang/Runnable;

    :cond_1
    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logAutoRemoveCanceled$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logAutoRemoveCanceled$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v5, "HeadsUpManager"

    invoke-virtual {v1, v5, v2, v4, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string/jumbo p0, "unknown"

    :cond_2
    iput-object p0, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
