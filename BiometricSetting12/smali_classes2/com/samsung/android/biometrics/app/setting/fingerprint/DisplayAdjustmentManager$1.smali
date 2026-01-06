.class Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;
.super Landroid/os/Handler;
.source "DisplayAdjustmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLogFormat(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_DisplayAdjustmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->access$400(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V

    nop

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x65 -> :sswitch_3
        0x66 -> :sswitch_2
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method
