.class public final synthetic Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/VibratorHelper;

    iget p0, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda5;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/statusbar/VibratorHelper;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, p0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void
.end method
