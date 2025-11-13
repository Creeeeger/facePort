.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final USI_NOTIFICATION_ID:I


# instance fields
.field public batteryCapacity:F

.field public final context:Landroid/content/Context;

.field public final handler:Landroid/os/Handler;

.field public inputDeviceId:Ljava/lang/Integer;

.field public final inputManager:Landroid/hardware/input/InputManager;

.field public instanceId:Lcom/android/internal/logging/InstanceId;

.field public final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field public final receiver:Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

.field public suppressed:Z

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/stylus/StylusUsiPowerUI$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    const v0, 0x7f1312d7

    sput v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;Landroid/hardware/input/InputManager;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iput-object p3, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputManager:Landroid/hardware/input/InputManager;

    iput-object p4, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 p2, 0x2000

    invoke-direct {p1, p2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    new-instance p1, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;-><init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->receiver:Lcom/android/systemui/stylus/StylusUsiPowerUI$receiver$1;

    return-void
.end method

.method public static synthetic getInputDeviceId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInstanceIdSequence$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getReceiver$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->instanceId:Lcom/android/internal/logging/InstanceId;

    if-nez v0, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->instanceId:Lcom/android/internal/logging/InstanceId;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->instanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public final logUiEvent(Lcom/android/systemui/stylus/StylusUiEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/stylus/StylusUsiPowerUI;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    iget p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    float-to-double v5, p0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    return-void
.end method
