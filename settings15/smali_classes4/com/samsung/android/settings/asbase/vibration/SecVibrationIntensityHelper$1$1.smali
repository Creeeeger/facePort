.class public final Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

.field public final synthetic val$attr:Landroid/os/VibrationAttributes;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;Landroid/os/VibrationAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$1;->this$1:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$1;->val$attr:Landroid/os/VibrationAttributes;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$1;->this$1:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    iget-boolean v1, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mEffect:Landroid/os/VibrationEffect;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$1;->val$attr:Landroid/os/VibrationAttributes;

    invoke-virtual {v1, v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    goto :goto_0

    :cond_0
    const-string p0, "SecVibrationIntensityHelper"

    const-string v0, "SEP is canceled by stop flag"

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
