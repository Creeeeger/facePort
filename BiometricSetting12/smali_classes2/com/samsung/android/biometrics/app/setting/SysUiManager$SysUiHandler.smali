.class public final Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;
.super Landroid/os/Handler;
.source "SysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SysUiHandler"
.end annotation


# static fields
.field static final MSG_AUTHENTICATION_ERROR:I = 0x6

.field static final MSG_AUTHENTICATION_FAILED:I = 0x4

.field static final MSG_AUTHENTICATION_HELP:I = 0x5

.field static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x3

.field static final MSG_HANDLE_EVENT:I = 0x7

.field static final MSG_HIDE_SYS_UI:I = 0x2

.field static final MSG_SHOW_SYS_UI:I = 0x1

.field static final MSG_TASK_STACK_LISTENER:I = 0x9

.field static final MSG_USER_CANCELED:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLogFormat(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$800(Lcom/samsung/android/biometrics/app/setting/SysUiManager;II)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->getSessionId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$200(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IZ)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$700(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IIILandroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$600(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$400(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$300(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$200(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IZ)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v11, Landroid/hardware/biometrics/PromptInfo;

    invoke-static/range {v1 .. v11}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$100(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    :goto_0
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
