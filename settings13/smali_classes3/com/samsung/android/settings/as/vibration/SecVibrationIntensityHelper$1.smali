.class Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;
.super Ljava/lang/Object;
.source "SecVibrationIntensityHelper.java"

# interfaces
.implements Lcom/samsung/android/settings/as/vibration/ITouchSeekBarCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 136
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmIconHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouchToRingtone(Landroid/media/Ringtone;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->stopVibration()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fputmRingtone(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;Landroid/media/Ringtone;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmRingtone(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$2;-><init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;)V

    const-wide/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onTouchToVibration(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->stopVibration()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fputmEffect(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;Landroid/os/VibrationEffect;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmVibrator(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmEffect(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/VibrationEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;-><init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;Landroid/os/VibrationAttributes;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
