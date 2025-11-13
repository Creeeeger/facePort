.class public final Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final sonificationEffects:Landroid/media/AudioAttributes;

.field public udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public final vibrator:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->vibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->sonificationEffects:Landroid/media/AudioAttributes;

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$1;-><init>(Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;)V

    const-string/jumbo p0, "udfps-haptic"

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static invalidCommand$1(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "invalid command"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Usage: adb shell cmd statusbar udfps-haptic <haptic>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Available commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  start"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  success, always plays CLICK haptic"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  error, always plays DOUBLE_CLICK haptic"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->invalidCommand$1(Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6f4abffd

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->vibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    if-eq v1, v2, :cond_5

    const v0, 0x5c4d208

    if-eq v1, v0, :cond_3

    const v0, 0x68ac462

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    goto :goto_1

    :cond_3
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->sonificationEffects:Landroid/media/AudioAttributes;

    invoke-virtual {v3, p1, p0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->invalidCommand$1(Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_6
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->sonificationEffects:Landroid/media/AudioAttributes;

    invoke-virtual {v3, p1, p0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_7
    :goto_1
    return-void
.end method
