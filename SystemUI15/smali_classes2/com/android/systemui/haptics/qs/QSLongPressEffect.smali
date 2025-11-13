.class public final Lcom/android/systemui/haptics/qs/QSLongPressEffect;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public callback:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

.field public final durations:[I

.field public effectDuration:I

.field public expandable:Lcom/android/systemui/animation/Expandable;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public longPressHint:Landroid/os/VibrationEffect;

.field public qsTile:Lcom/android/systemui/plugins/qs/QSTile;

.field public final snapEffect:Landroid/os/VibrationEffect;

.field public state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p2, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    sget-object p2, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->IDLE:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    iput-object p2, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    const/4 v0, 0x3

    filled-new-array {p2, v0}, [I

    move-result-object p2

    iget-object p1, p1, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/os/Vibrator;->getPrimitiveDurations([I)[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->durations:[I

    sget-object p1, Lcom/android/systemui/haptics/qs/LongPressHapticBuilder;->INSTANCE:Lcom/android/systemui/haptics/qs/LongPressHapticBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v1, p2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->snapEffect:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final setState(Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    return-void
.end method
