.class Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;
.super Landroid/os/Handler;
.source "VEAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyzeEventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/vekit/Control/VEAnalyzer;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Control/VEAnalyzer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-ltz v0, :cond_c

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/vekit/Control/VEAnalyzer$1;->$SwitchMap$com$samsung$vekit$Control$VEAnalyzer$AnalyzeStatus:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v3, v3, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v3, v3, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v3, v1, v2}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionError(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;)V

    :cond_1
    return-void

    :pswitch_1
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v2, v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionUnloaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v2, v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzePaused()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzePaused()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeCompleted()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeCompleted()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeFailed()V

    :cond_6
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeFailed()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeStopped()V

    :cond_7
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeStopped()V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v2, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeStarted()V

    :cond_8
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeStarted()V

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v2, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->PAUSED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeResumed()V

    :cond_a
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeResumed()V

    goto :goto_0

    :pswitch_8
    nop

    :cond_b
    :goto_0
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iput-object v0, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    return-void

    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$000(Lcom/samsung/vekit/Control/VEAnalyzer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analyzer Status is invalid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
