.class Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$2;
.super Ljava/lang/Object;
.source "SecVibrationIntensityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->onTouchToRingtone(Landroid/media/Ringtone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$2;->this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$2;->this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

    iget-object v0, v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmStopFlag(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1$2;->this$1:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmRingtone(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Landroid/media/Ringtone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :cond_0
    const-string p0, "SecVibrationIntensityHelper"

    const-string v0, "ACH is canceled by stop flag"

    .line 120
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
