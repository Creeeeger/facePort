.class public final Lcom/android/systemui/power/PowerUI;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final DEBUG:Z


# instance fields
.field mBatteryLevel:I

.field mBatteryStatus:I

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

.field public mEnableSkinTemperatureWarning:Z

.field public mEnableUsbTemperatureAlarm:Z

.field public final mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field public final mHandler:Landroid/os/Handler;

.field public mInVrMode:Z

.field public mInvalidCharger:I

.field mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public mLowBatteryAlertCloseLevel:I

.field public final mLowBatteryReminderLevels:[I

.field mLowWarningShownThisChargeCycle:Z

.field public mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

.field public mPlugType:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field public mScreenOffTime:J

.field mSevereWarningShownThisChargeCycle:Z

.field public mSkinThermalEventListener:Landroid/os/IThermalEventListener;

.field mThermalService:Landroid/os/IThermalService;

.field public mUsbThermalEventListener:Landroid/os/IThermalEventListener;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVrManager:Landroid/service/vr/IVrManager;

.field public final mVrStateCallbacks:Lcom/android/systemui/power/PowerUI$3;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Landroid/service/vr/IVrManager;Lcom/android/systemui/power/PowerUI$WarningsUI;Lcom/android/systemui/power/EnhancedEstimates;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/PowerManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {p5, p0}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    new-instance p5, Landroid/content/res/Configuration;

    invoke-direct {p5}, Landroid/content/res/Configuration;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 p5, 0x0

    iput p5, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iput p5, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const/4 p5, 0x2

    new-array p5, p5, [I

    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const/16 p5, 0x64

    iput p5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 p5, 0x1

    iput p5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    new-instance p5, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;

    new-instance p5, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {p5, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance p5, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {p5, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mVrStateCallbacks:Lcom/android/systemui/power/PowerUI$3;

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/power/PowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/power/PowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p4, p0, Lcom/android/systemui/power/PowerUI;->mVrManager:Landroid/service/vr/IVrManager;

    iput-object p6, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    iput-object p8, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    iput-object p7, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p9, p0, Lcom/android/systemui/power/PowerUI;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-void
.end method


# virtual methods
.method public final dismissInattentiveSleepWarning(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/power/InattentiveSleepWarningView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/power/InattentiveSleepWarningView$$ExternalSyntheticLambda0;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized doSkinThermalEventListenerRegistration()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_temperature_warning"

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_2

    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v0

    :goto_2
    move v3, v0

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_2
    const-string v1, "PowerUI"

    const-string v4, "Exception while (un)registering skin thermal event listener."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    const-string v0, "PowerUI"

    const-string v1, "Failed to register or unregister skin thermal event listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doUsbThermalEventListenerRegistration()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_usb_temperature_alarm"

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_2

    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    const/4 v4, 0x4

    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v0

    :goto_2
    move v3, v0

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_2
    const-string v1, "PowerUI"

    const-string v4, "Exception while (un)registering usb thermal event listener."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    const-string v0, "PowerUI"

    const-string v1, "Failed to register or unregister usb thermal event listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "mLowBatteryReminderLevels="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mBatteryLevel="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mBatteryStatus="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mPlugType="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mInvalidCharger="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mScreenOffTime="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, " ago)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p2, "soundTimeout="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "low_battery_sound_timeout"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "bucket: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mEnableSkinTemperatureWarning="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "mEnableUsbTemperatureAlarm="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final findBatteryLevelBucket(I)I
    .locals 3

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v0, 0x0

    aget v2, p0, v0

    if-le p1, v2, :cond_1

    return v0

    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    aget v1, p0, v0

    if-gt p1, v1, :cond_2

    rsub-int/lit8 p0, v0, -0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public maybeShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V
    .locals 4

    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    const/16 v1, 0x1e

    const-string v2, "PowerUI"

    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    if-eqz v3, :cond_0

    const-string v0, "Charge cycle reset! Can show warnings again"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    iget v1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    if-ne v1, v0, :cond_1

    iget-boolean p2, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v3, :cond_2

    const-string p0, "Dismissing warning"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v0

    :cond_3
    if-eqz v3, :cond_4

    const-string p0, "Updating warning"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0

    :cond_5
    throw v0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public refreshEstimateIfNeeded()Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    if-eqz v0, :cond_1

    const-wide/16 v1, -0x1

    iget-wide v3, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget v0, v0, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/fuelgauge/Estimate;

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    iget-wide v3, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->timeRemainingMillis:J

    iget-boolean v5, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->isBasedOnUsage:Z

    iget-wide v6, p0, Lcom/android/systemui/power/BatteryStateSnapshot;->averageTimeToDischargeMillis:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    check-cast p0, Lcom/android/systemui/power/EnhancedEstimatesImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/settingslib/fuelgauge/Estimate;

    const-wide/16 v4, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updated estimate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method public shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    if-nez p0, :cond_1

    iget p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public shouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    if-nez p0, :cond_1

    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    if-nez p0, :cond_1

    iget p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    if-le p1, p0, :cond_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 6

    iget-boolean v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    const-string v1, "PowerUI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    if-nez v0, :cond_6

    if-ne v4, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    iget v4, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    if-gt v4, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    if-nez v5, :cond_2

    iget v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    if-gt v4, v5, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "Enhanced trigger is: "

    const-string v3, "\nwith battery snapshot: mLowWarningShownThisChargeCycle: "

    invoke-static {v0, v3, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSevereWarningShownThisChargeCycle: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "can\'t show warning due to - plugged: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " status unknown: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v3, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public shouldShowLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 1

    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    if-nez p0, :cond_1

    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    if-nez p0, :cond_1

    iget p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    if-lt v0, p0, :cond_0

    iget-boolean p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    if-eqz p0, :cond_1

    :cond_0
    if-gez v0, :cond_1

    const/4 p0, 0x1

    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showInattentiveSleepWarning()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/power/InattentiveSleepWarningView;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/power/InattentiveSleepWarningView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowToken:Landroid/os/IBinder;

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x100

    const/4 v7, -0x3

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7d6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "InattentiveSleepWarning"

    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v1, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130796

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 10

    const-string v0, "PowerUI"

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    new-instance v1, Lcom/android/systemui/power/PowerUI$4;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power_trigger_level"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v9, v8, Lcom/android/systemui/power/PowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v8, v8, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1, v4, v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    iget-boolean v4, v1, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    const/4 v8, 0x0

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v7, v1, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v7, v7, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v4}, Lcom/android/systemui/power/PowerUI$Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v7, v1, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v4, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "powerui_prefs"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v7, "boot_count"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v9, "Failed to read system boot count from Settings.Global.BOOT_COUNT"

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-le v6, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getLastShutdownReason()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    throw v8

    :cond_3
    :goto_2
    const-string/jumbo v1, "show_temperature_warning"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "show_usb_temperature_alarm"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doSkinThermalEventListenerRegistration()V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doUsbThermalEventListenerRegistration()V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_4

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mVrStateCallbacks:Lcom/android/systemui/power/PowerUI$3;

    invoke-interface {v1, p0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to register VR mode state listener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method

.method public final updateBatteryWarningLevels()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v1, v3, v2

    const/4 v2, 0x1

    aput v0, v3, v2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return-void
.end method
