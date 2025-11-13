.class public final Lcom/android/systemui/charging/WiredChargingRippleController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final normalizedPortPosX:F

.field public final normalizedPortPosY:F

.field public final rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    iput-object p7, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p8, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/flags/Flags;->CHARGING_RIPPLE:Lcom/android/systemui/flags/ResourceBooleanFlag;

    check-cast p4, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p4, p2}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const-string p2, "persist.debug.suppress-charging-ripple"

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070c8e

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->normalizedPortPosX:F

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070c8f

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->normalizedPortPosY:F

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 p4, -0x1

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p4, 0x3

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p4, -0x3

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p4, 0x7d9

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p3, "Wired Charging Animation"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p3, 0x18

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iput-object p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p2, Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    const/4 p3, 0x0

    invoke-direct {p2, p5, p3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    invoke-virtual {p2, p3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setupShader(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    iput-object p2, p0, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    new-instance p3, Lcom/android/systemui/charging/WiredChargingRippleController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/charging/WiredChargingRippleController$1;-><init>(Lcom/android/systemui/charging/WiredChargingRippleController;)V

    const-string p0, "charging-ripple"

    invoke-virtual {p1, p0, p3}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const p0, 0x1010435

    invoke-static {p0, p5}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    const/16 p1, 0x73

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    return-void
.end method

.method public static synthetic getRippleView$annotations()V
    .locals 0

    return-void
.end method
