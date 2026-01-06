.class public Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;
.super Ljava/lang/Object;
.source "SysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayStateManager"
.end annotation


# static fields
.field private static final DISPLAY_LIMIT_WAKELOCK_TIME:I = 0x7d0


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field private mH:Landroid/os/Handler;

.field private mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mIsLimitedDisplayOn:Z

.field private mLastDisplayState:I

.field private mPartialWake:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Landroid/os/Handler;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mH:Landroid/os/Handler;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$900(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "BSS_SysUiManager:P"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mPartialWake:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->access$900(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mLastDisplayState:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayState:I

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;Landroid/view/Display;)Landroid/view/Display;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplay:Landroid/view/Display;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mLastDisplayState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mLastDisplayState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->registerListener()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->unRegisterListener()V

    return-void
.end method

.method private fpSysUiRequestToSystemServer(IIJLjava/lang/String;)V
    .locals 8

    const-string v0, "BSS_SysUiManager"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v1, :cond_0

    const-string v1, "fingerprint"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mIFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v2, :cond_1

    const-string v1, "IFingerprintService is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqSetDisplayStateLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager$1;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mH:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayStateManager.registerDisplayListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unRegisterListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayStateManager.unRegisterListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplay:Landroid/view/Display;

    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object v0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public isDozeState()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayState:I

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    return v0
.end method

.method public isOffState()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOnState()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDisplayStateLimit(Z)V
    .locals 9

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mIsLimitedDisplayOn:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->fpSysUiRequestToSystemServer(IIJLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mIsLimitedDisplayOn:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mIsLimitedDisplayOn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mIsLimitedDisplayOn:Z

    const-string v0, "BSS_SysUiManager"

    const-string v1, "setDisplayStateLimit: -> 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mPartialWake:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->fpSysUiRequestToSystemServer(IIJLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->mPartialWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
