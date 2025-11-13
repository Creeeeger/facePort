.class Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;
.super Ljava/lang/Object;
.source "SecVibrationIntensityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->onTouchToVibration(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

.field final synthetic val$attr:Landroid/os/VibrationAttributes;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;Landroid/os/VibrationAttributes;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;->this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

    iput-object p2, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;->val$attr:Landroid/os/VibrationAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;->this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

    iget-object v0, v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmStopFlag(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;->this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

    iget-object v0, v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmVibrator(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;->this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

    iget-object v1, v1, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmEffect(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/os/VibrationEffect;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$1;->val$attr:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    goto :goto_0

    :cond_0
    const-string p0, "SecVibrationIntensityHelper"

    const-string v0, "SEP is canceled by stop flag"

    .line 102
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
