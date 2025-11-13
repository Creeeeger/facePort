.class public final Lcom/android/systemui/settings/brightness/SecBrightnessController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public static final Companion:Lcom/android/systemui/settings/brightness/SecBrightnessController$Companion;

.field public static final HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

.field public static final SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field public static final SEC_AUTO_BRIGHTNESS_TRANSITION_TIME_URI:Landroid/net/Uri;

.field public static final SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;


# instance fields
.field public final brightnessControllerObserver:Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;

.field public brightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

.field public final context:Landroid/content/Context;

.field public final control:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field public final handler:Landroid/os/Handler;

.field public final maximumBacklight:F

.field public final minimumBacklight:F

.field public sliderAnimationDuration:I

.field public transitionTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/brightness/SecBrightnessController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/SecBrightnessController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->Companion:Lcom/android/systemui/settings/brightness/SecBrightnessController$Companion;

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string v0, "pms_notification_panel_brightness_adjustment"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "high_brightness_mode_pms_enter"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    const-string v0, "display_outdoor_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    const-string v0, "auto_brightness_transition_time"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SEC_AUTO_BRIGHTNESS_TRANSITION_TIME_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/settings/brightness/ToggleSlider;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->control:Lcom/android/systemui/settings/brightness/ToggleSlider;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->context:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->transitionTime:I

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->minimumBacklight:F

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->maximumBacklight:F

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->minimumBacklight:F

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->maximumBacklight:F

    :cond_1
    iget v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->maximumBacklight:F

    iget v1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->minimumBacklight:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {p2, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;

    invoke-direct {p2, p1, p4, p3}, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->brightnessControllerObserver:Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->control:Lcom/android/systemui/settings/brightness/ToggleSlider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->transitionTime:I

    goto/16 :goto_1

    :pswitch_1
    instance-of p0, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz p0, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    :cond_0
    if-eqz v4, :cond_7

    iget-object p0, v4, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p0, :cond_7

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move v3, v1

    :cond_1
    const-string/jumbo p1, "updateHighBrightnessModeEnter : "

    invoke-static {p1, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz p0, :cond_7

    iput-boolean v3, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->highBrightnessModeEnter:Z

    goto/16 :goto_1

    :pswitch_2
    instance-of p1, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz p1, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    :cond_2
    if-eqz v4, :cond_7

    iget-object p1, v4, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->brightnessIcon$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->init(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    instance-of p0, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz p0, :cond_3

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    :cond_3
    if-eqz v4, :cond_7

    iget-object p0, v4, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p0, :cond_7

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    move v3, v1

    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->outdoormode:Z

    xor-int/lit8 p1, v3, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->updateSystemBrightnessEnabled(Z)V

    goto :goto_1

    :pswitch_4
    instance-of p0, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz p0, :cond_5

    check-cast v2, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    goto :goto_0

    :cond_5
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_7

    iget-object p0, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->packageManager$delegate:Lkotlin/Lazy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    :try_start_0
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v4, :cond_6

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->appUsingBrightness:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->updateSystemBrightnessEnabled(Z)V

    :cond_7
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
