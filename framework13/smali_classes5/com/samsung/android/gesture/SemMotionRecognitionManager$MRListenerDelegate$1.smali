.class Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;
.super Landroid/os/Handler;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

.field final synthetic blacklist val$this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 795
    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->val$this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 798
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    iget-object v0, v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 801
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x35

    if-ne v1, v2, :cond_0

    .line 802
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 803
    .local v1, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-static {v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/gesture/SemMotionEventListener;->onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    .end local v1    # "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :cond_0
    goto :goto_0

    .line 809
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 806
    :catch_0
    move-exception v1

    .line 807
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_1
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_0
    monitor-exit v0

    .line 810
    return-void

    .line 809
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
