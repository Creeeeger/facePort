.class public Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DSU]StatusBarManagerWrapper"

.field private static final commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;


# instance fields
.field private mService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;

    return-object v0
.end method

.method private getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "[DSU]StatusBarManagerWrapper"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method


# virtual methods
.method public addCallbacks(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V

    return-void
.end method

.method public clearCallbacks()V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->clearCallback()V

    return-void
.end method

.method public getThemeAttributeId(Landroid/content/res/TypedArray;II)I
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result p0

    return p0
.end method

.method public onClearAllNotifications(I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNotificationClear(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {p3, v1, v1, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerDesktopbar()V
    .locals 4

    const-string v0, "[DSU]StatusBarManagerWrapper"

    const-string/jumbo v1, "registerStatusBarAsType result:"

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBarAsType(Lcom/android/internal/statusbar/IStatusBar;I)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mDisabledFlags1:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " mTransientBarTypes:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string/jumbo p0, "result is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to register DesktopBar:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public removeCallbacks(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/StatusBarManagerWrapper;->commandQueue:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V

    return-void
.end method
