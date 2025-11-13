.class Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;
.super Ljava/lang/Object;
.source "SemMotionRecognitionManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 636
    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 639
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 640
    .local v0, "semContext":Lcom/samsung/android/hardware/context/SemContext;
    new-instance v1, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    invoke-direct {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;-><init>()V

    .line 641
    .local v1, "mrevent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    const/4 v2, 0x0

    .line 643
    .local v2, "isEnabledPickUp":Z
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 645
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getMovementContext()Lcom/samsung/android/hardware/context/SemContextMovement;

    move-result-object v3

    .line 646
    .local v3, "semContextMovement":Lcom/samsung/android/hardware/context/SemContextMovement;
    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextMovement;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 648
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetmotionService(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getPickUpMotionStatus()Z

    move-result v4

    move v2, v4

    .line 649
    const-string v4, "MotionRecognitionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  >> check setting smart alert enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    goto :goto_0

    .line 650
    :catch_0
    move-exception v4

    .line 651
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in getPickUpMotionStatus: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v2, :cond_1

    .line 655
    const/16 v4, 0x43

    invoke-virtual {v1, v4}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->setMotion(I)V

    .line 656
    const-string v4, "MotionRecognitionManager"

    const-string v5, "mySemContextMotionListener : Send Smart alert event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 659
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v5}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 660
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 661
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v7}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 662
    .local v7, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v7, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    .line 660
    .end local v7    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 664
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_0
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 671
    .end local v3    # "semContextMovement":Lcom/samsung/android/hardware/context/SemContextMovement;
    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
