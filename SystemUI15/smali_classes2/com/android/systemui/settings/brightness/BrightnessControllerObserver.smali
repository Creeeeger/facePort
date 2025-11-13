.class public final Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final backgroundHandler:Landroid/os/Handler;

.field public final context:Landroid/content/Context;

.field public final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->backgroundHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->context:Landroid/content/Context;

    return-void
.end method

.method public static final onChange$toPost(Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;Ljava/lang/String;II)V
    .locals 8

    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->TAG:Ljava/lang/String;

    const-string v1, "BrightnessObserver.onChange() : "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->backgroundHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$toPost$1$1;

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$toPost$1$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;ILcom/android/systemui/settings/brightness/BrightnessControllerObserver;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/android/systemui/settings/brightness/SecBrightnessController;->Companion:Lcom/android/systemui/settings/brightness/SecBrightnessController$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->TAG:Ljava/lang/String;

    const-string p2, "BrightnessObserver.onChange() : pms_notification_panel_brightness_adjustment"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->backgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;

    const-string v1, "pms_notification_panel_brightness_adjustment"

    const/4 v2, 0x7

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string p1, "high_brightness_mode_pms_enter"

    const/16 p2, 0xa

    invoke-static {p0, p1, v1, p2}, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->onChange$toPost(Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "display_outdoor_mode"

    const/16 p2, 0x8

    invoke-static {p0, p1, v1, p2}, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->onChange$toPost(Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SEC_AUTO_BRIGHTNESS_TRANSITION_TIME_URI:Landroid/net/Uri;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    const/16 p2, 0xb

    const-string v0, "auto_brightness_transition_time"

    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->onChange$toPost(Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;Ljava/lang/String;II)V

    :cond_4
    :goto_0
    return-void
.end method
