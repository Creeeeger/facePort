.class public Lcom/samsung/android/multicontrol/MCTriggerManager;
.super Ljava/lang/Object;
.source "MCTriggerManager.java"


# instance fields
.field blacklist DEX_DISPLAY:I

.field private final blacklist TAG:Ljava/lang/String;

.field public final blacklist TAG_PREFIX:Ljava/lang/String;

.field private blacklist desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private blacklist isDexEnabled:Z

.field blacklist isEnabled:Z

.field blacklist mContext:Landroid/content/Context;

.field blacklist mDexInputChannel:Landroid/view/InputChannel;

.field blacklist mDexInputMonitor:Landroid/view/InputMonitor;

.field blacklist mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

.field blacklist mInputChannel:Landroid/view/InputChannel;

.field blacklist mInputMonitor:Landroid/view/InputMonitor;

.field blacklist mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

.field blacklist mLooper:Landroid/os/Looper;

.field blacklist semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetisDexEnabled(Lcom/samsung/android/multicontrol/MCTriggerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDexEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputisDexEnabled(Lcom/samsung/android/multicontrol/MCTriggerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDexEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MultiControl@"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG_PREFIX:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    iput-boolean v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDexEnabled:Z

    new-instance v0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multicontrol/MCTriggerManager$1;-><init>(Lcom/samsung/android/multicontrol/MCTriggerManager;)V

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method private blacklist isDesktopModeEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist registerDesktopModeListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    return-void
.end method

.method private blacklist unregisterDesktopModeListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dump()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInputChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInputReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDexInputChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDexInputReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist enable(Z)V
    .locals 10

    const-string v0, "input"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v3, "[enable] true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    const-string v3, "MultiControl_0"

    invoke-virtual {v2, v3, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputChannel:Landroid/view/InputChannel;

    new-instance v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iget-object v4, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    iget-object v7, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputChannel:Landroid/view/InputChannel;

    iget-object v8, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    const/4 v5, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;-><init>(Landroid/content/Context;ILandroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDesktopModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    move-object v2, v0

    const-string v0, "MultiControl_2"

    iget v4, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    invoke-virtual {v2, v0, v4}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputChannel:Landroid/view/InputChannel;

    new-instance v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iget-object v5, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    iget-object v7, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    iget-object v8, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputChannel:Landroid/view/InputChannel;

    iget-object v9, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;-><init>(Landroid/content/Context;ILandroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->registerDesktopModeListener()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v1, "[enable] false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->dispose()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->dispose()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->unregisterDesktopModeListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v2, "[enableTriggerDetection]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public blacklist setTriggerThreshold(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->setTriggerThreshold(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->setTriggerThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v2, "[setTriggerThreshold]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
