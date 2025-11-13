.class Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;
.super Landroid/os/Handler;
.source "PaymentSafetyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PaymentSafetyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/PaymentSafetyPolicy;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 133
    iput-object p1, p0, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    .line 134
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    const-string v0, "PaymentSafetyPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Payment thread msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 158
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$monUserAction(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Bundle;)V

    .line 159
    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$monPkgChanged(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Bundle;)V

    .line 156
    goto :goto_0

    .line 148
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-static {v0}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$fgetmCheckedAppSet(Lcom/android/internal/app/PaymentSafetyPolicy;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-static {v1}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$fgetmCheckedAppSet(Lcom/android/internal/app/PaymentSafetyPolicy;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    monitor-exit v0

    .line 153
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 145
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$mcheckPolicy(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Bundle;)V

    .line 146
    goto :goto_0

    .line 142
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;->this$0:Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-static {v0}, Lcom/android/internal/app/PaymentSafetyPolicy;->-$$Nest$mloadPaymentAppSet(Lcom/android/internal/app/PaymentSafetyPolicy;)V

    .line 143
    nop

    .line 163
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0x14 -> :sswitch_3
        0x1e -> :sswitch_2
        0x28 -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method
