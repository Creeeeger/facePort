.class public final Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$2;->this$1:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1$2;->this$1:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mStopFlag:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHelper;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :cond_0
    const-string p0, "SecVibrationIntensityHelper"

    const-string v0, "ACH is canceled by stop flag"

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
