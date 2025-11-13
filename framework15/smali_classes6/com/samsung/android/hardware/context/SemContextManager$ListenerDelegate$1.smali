.class Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEvent;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmIsHistoryData(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z

    move-result v3

    const-string v4, "SemContextManager"

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "History data is received. : type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    iget-object v3, v3, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fputmIsHistoryData(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Z)V

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    iget-object v3, v3, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v3, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$mcheckHistoryMode(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRotationEvent : Angle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[2] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getTotalStepCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getWalkStepCount()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getRunStepCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :goto_0
    nop

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmDereisgeredListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    :cond_6
    :goto_2
    return-void
.end method
