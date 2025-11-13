.class public final Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# static fields
.field public static sConfirmed:Z


# instance fields
.field public mCanSystemBarsBeShownByUser:Z

.field public mClingWindow:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mConfirm:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;

.field public mContentObserver:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$1;

.field public final mDisplayContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

.field public mLockTaskState:I

.field public mNavBarEmpty:Z

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mShowDelayMs:J

.field public final mSysUiContext:Landroid/content/Context;

.field public mVrModeEnabled:Z

.field public final mVrStateCallbacks:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;

.field public mWindowContextRootDisplayAreaId:I

.field public mWindowManager:Landroid/view/WindowManager;

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mShowDelayMs:J

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowContextRootDisplayAreaId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mCanSystemBarsBeShownByUser:Z

    iput v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mLockTaskState:I

    new-instance v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mVrStateCallbacks:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;

    new-instance v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mConfirm:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSysUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mDisplayContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    return-void
.end method


# virtual methods
.method public final confirmImmersivePrompt()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mConfirm:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final createWindowManager(I)Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "root_display_area_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowContextRootDisplayAreaId:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mDisplayContext:Landroid/content/Context;

    const/16 v1, 0x7e1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must not create a new WindowManager while there is an existing one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final disable(IIIZ)V
    .locals 0

    iget-object p3, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSysUiContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x1600000

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mNavBarEmpty:Z

    return-void
.end method

.method public final handleHide$2()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Fail to hide the immersive confirmation window because of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImmersiveModeConfirm"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    :cond_1
    return-void
.end method

.method public final immersiveModeChanged(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-interface {p2, v2, v3, v4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_0

    move v3, v1

    :cond_0
    sget-boolean p2, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez p2, :cond_2

    if-eqz v3, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mCanSystemBarsBeShownByUser:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mNavBarEmpty:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mDisplayContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mLockTaskState:I

    if-eq p2, v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    iget-wide p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSysUiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo p1, "vrmanager"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mVrStateCallbacks:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;

    invoke-interface {p1, v0}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public final onLockTaskModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mLockTaskState:I

    return-void
.end method

.method public final start()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mVrStateCallbacks:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;

    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSysUiContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mShowDelayMs:J

    const v2, 0x7f050037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f050038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mCanSystemBarsBeShownByUser:Z

    const-string/jumbo v1, "vrmanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    invoke-interface {v1, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;->onVrStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$1;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mContentObserver:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    const-string/jumbo v0, "user_setup_complete"

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mContentObserver:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$1;

    invoke-interface {v1, v0, p0, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    :cond_4
    return-void
.end method
