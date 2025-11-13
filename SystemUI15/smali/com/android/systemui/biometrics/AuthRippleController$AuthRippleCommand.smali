.class public final Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invalidCommand(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "invalid command"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Usage: adb shell cmd statusbar auth-ripple <command>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Available commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dwell"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  fingerprint"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  face"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  custom <x-location: int> <y-location: int>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->invalidCommand(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p2, "dwell"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$showDwellRipple(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/Point;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsRadius:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lock screen dwell ripple: \n\tsensorLocation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n\tudfpsRadius="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_1
    const-string p2, "face"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "face ripple sensorLocation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController;->showUnlockRippleInternal(Landroid/hardware/biometrics/BiometricSourceType;)V

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "custom ripple sensorLocation="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getMView$p$s-2044592172(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthRippleView;

    new-instance v2, Landroid/graphics/Point;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v2, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/biometrics/AuthRippleView;->setSensorLocation(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showUnlockedRipple()V

    goto :goto_2

    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->invalidCommand(Ljava/io/PrintWriter;)V

    return-void

    :sswitch_3
    const-string p2, "fingerprint"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->invalidCommand(Ljava/io/PrintWriter;)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fingerprint ripple sensorLocation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController;->showUnlockRippleInternal(Landroid/hardware/biometrics/BiometricSourceType;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5203171c -> :sswitch_3
        -0x5069748f -> :sswitch_2
        0x2fd65d -> :sswitch_1
        0x5b8cf32 -> :sswitch_0
    .end sparse-switch
.end method
