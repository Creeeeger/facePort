.class public final Lcom/android/systemui/power/sound/ChargingSound$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/sound/ChargingSound;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/sound/ChargingSound;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/sound/ChargingSound$1;->this$0:Lcom/android/systemui/power/sound/ChargingSound;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/power/sound/ChargingSound$1;->this$0:Lcom/android/systemui/power/sound/ChargingSound;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p0, "ChargingSound"

    const-string p1, "This case is abnormal!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x6f

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playVibration(IILandroid/os/VibrationEffect$SemMagnitudeType;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playSound(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/sound/PowerUiSound;->playSound(I)V

    :goto_0
    return-void
.end method
