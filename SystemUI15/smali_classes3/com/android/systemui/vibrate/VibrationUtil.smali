.class public final Lcom/android/systemui/vibrate/VibrationUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mVibratorType:Lcom/android/systemui/vibrate/VibratorType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/vibrate/VibratorType;->setVibrator(Landroid/os/Vibrator;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    :goto_1
    return-void
.end method


# virtual methods
.method public final playVibration(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/vibrate/VibratorType;->playVibration(Lcom/android/systemui/vibrate/VibrationUtil;I)V

    :goto_1
    return-void
.end method
