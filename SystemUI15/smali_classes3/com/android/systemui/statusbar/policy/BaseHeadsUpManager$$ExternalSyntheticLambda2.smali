.class public final synthetic Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;Ljava/lang/String;Ljava/lang/String;ZLcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$4:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$3:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$$ExternalSyntheticLambda2;->f$4:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v6, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logRemoveEntry$2;

    invoke-direct {v6, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logRemoveEntry$2;-><init>(Z)V

    const/4 v7, 0x0

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "HeadsUpManager"

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v6, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v2, v7, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-boolean v3, v7, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mExpandAnimationRunning:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsDemoted:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHeadsUpEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->onEntryRemoved(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;)V

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->reset()V

    :goto_0
    return-void
.end method
