.class public final Lcom/android/wm/shell/freeform/FreeformContainerManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CHINA_SALES_CODES:[Ljava/lang/String;

.field public static sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;


# instance fields
.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

.field public mRotation:I

.field public final mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

.field public final mSalesCode:Ljava/lang/String;

.field public final mSettingsObserver:Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;

.field public final mThread:Landroid/os/HandlerThread;


# direct methods
.method public static -$$Nest$mshouldHideInformation(Lcom/android/wm/shell/freeform/FreeformContainerManager;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mSalesCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/wm/shell/freeform/FreeformContainerManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    move v3, v1

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mSettingsObserver:Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lelink_cast_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    if-eq p0, v2, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    :cond_1
    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method static constructor <clinit>()V
    .locals 6

    const-string v4, "CHU"

    const-string v5, "CHC"

    const-string v0, "CHN"

    const-string v1, "CHM"

    const-string v2, "CBK"

    const-string v3, "CTC"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mSalesCode:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;)V

    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;)V

    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "FreeformContainerHandlerThread"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;)V

    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mSettingsObserver:Lcom/android/wm/shell/freeform/FreeformContainerManager$SettingsObserver;

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;Landroid/os/Looper;I)V

    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const-string p0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;
    .locals 2

    sget-object v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    return-object p0
.end method

.method public static getOverrideStableInsets(Landroid/graphics/Rect;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->getOverrideStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FreeformContainer"

    const-string v1, "Failed to get override stable insets"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public final rebuildAll(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string v1, "[Manager] rebuild all, reason: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FreeformContainer"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    return-void
.end method
