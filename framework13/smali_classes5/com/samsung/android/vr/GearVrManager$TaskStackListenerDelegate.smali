.class final Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;
.super Landroid/os/Handler;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TaskStackListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Landroid/app/TaskStackListener;


# direct methods
.method public constructor blacklist <init>(Landroid/app/TaskStackListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/TaskStackListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1014
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1015
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    .line 1016
    return-void
.end method


# virtual methods
.method public blacklist clearEvents()V
    .locals 1

    .line 1054
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1055
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1060
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1095
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1096
    .local v0, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    invoke-virtual {v1, v0}, Landroid/app/TaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1097
    goto :goto_1

    .line 1089
    .end local v0    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1090
    .local v0, "taskId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1091
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    invoke-virtual {v2, v0, v1}, Landroid/app/TaskStackListener;->onTaskDisplayChanged(II)V

    .line 1092
    goto :goto_1

    .line 1083
    .end local v0    # "taskId":I
    .end local v1    # "displayId":I
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1084
    .restart local v0    # "taskId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 1085
    .local v1, "focused":Z
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    invoke-virtual {v2, v0, v1}, Landroid/app/TaskStackListener;->onTaskFocusChanged(IZ)V

    .line 1086
    goto :goto_1

    .line 1078
    .end local v0    # "taskId":I
    .end local v1    # "focused":Z
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1079
    .local v0, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    invoke-virtual {v1, v0}, Landroid/app/TaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1080
    goto :goto_1

    .line 1073
    .end local v0    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1074
    .restart local v0    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    invoke-virtual {v1, v0}, Landroid/app/TaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1075
    goto :goto_1

    .line 1068
    .end local v0    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1069
    .local v0, "taskId":I
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    invoke-virtual {v1, v0}, Landroid/app/TaskStackListener;->onTaskRemoved(I)V

    .line 1070
    goto :goto_1

    .line 1062
    .end local v0    # "taskId":I
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1063
    .restart local v0    # "taskId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 1064
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->mListener:Landroid/app/TaskStackListener;

    invoke-virtual {v2, v0, v1}, Landroid/app/TaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    nop

    .line 1102
    .end local v0    # "taskId":I
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :goto_1
    nop

    .line 1103
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist sendBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1049
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1050
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1051
    return-void
.end method

.method public blacklist sendTaskCreatedEvent(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 1019
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1020
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1021
    return-void
.end method

.method public blacklist sendTaskDisplayChanged(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "displayId"    # I

    .line 1044
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1045
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1046
    return-void
.end method

.method public blacklist sendTaskFocuseChangedEvent(IZ)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 1039
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1040
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    return-void
.end method

.method public blacklist sendTaskMoveToFrontEvent(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1034
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1035
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1036
    return-void
.end method

.method public blacklist sendTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1029
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1030
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1031
    return-void
.end method

.method public blacklist sendTaskRemovedEvent(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 1024
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1025
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$TaskStackListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1026
    return-void
.end method
