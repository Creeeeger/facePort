.class public final Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    if-eq v0, v1, :cond_3

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLogger:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v5, v5, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;->DEBUG:Z

    const-string v4, "LockNotifManager"

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger$logNotifList$2;->INSTANCE:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger$logNotifList$2;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;->onNotificationInfoUpdated(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;->onNotificationTypeChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
