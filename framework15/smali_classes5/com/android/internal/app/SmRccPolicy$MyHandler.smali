.class Lcom/android/internal/app/SmRccPolicy$MyHandler;
.super Landroid/os/Handler;
.source "SmRccPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SmRccPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/SmRccPolicy;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$mcallResetSmRccOpen(Lcom/android/internal/app/SmRccPolicy;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/SmRccPolicy;->updateRccRestrict(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/SmRccPolicy;->updateRccOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/SmRccPolicy;->updateRccShow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/SmRccPolicy;->removeRccPackage(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/SmRccPolicy$RccApp;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/SmRccPolicy;->addRccPackage(Lcom/android/internal/app/SmRccPolicy$RccApp;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {v0}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$mloadRccAppFromSm(Lcom/android/internal/app/SmRccPolicy;)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x14 -> :sswitch_5
        0x1e -> :sswitch_4
        0x28 -> :sswitch_3
        0x32 -> :sswitch_2
        0x3c -> :sswitch_1
        0x46 -> :sswitch_0
    .end sparse-switch
.end method
