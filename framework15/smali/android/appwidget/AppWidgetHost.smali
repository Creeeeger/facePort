.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;,
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field static final blacklist HANDLE_APP_WIDGET_REMOVED:I = 0x5

.field static final greylist-max-o HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final greylist-max-o HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final greylist-max-o HANDLE_UPDATE:I = 0x1

.field static final greylist-max-r HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field static final blacklist HANDLE_VIEW_UPDATE_DEFERRED:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "AppWidgetHost"

.field static greylist sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static greylist-max-o sServiceInitialized:Z

.field static final greylist-max-o sServiceLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field private greylist-max-o mContextOpPackageName:Ljava/lang/String;

.field private greylist-max-o mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final greylist mHandler:Landroid/os/Handler;

.field private final greylist-max-o mHostId:I

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private final blacklist mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateAppWidgetDeferred(Landroid/appwidget/AppWidgetHost;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetDeferred(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1}, Landroid/appwidget/AppWidgetHost;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method private static greylist-max-o bindService(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Landroid/appwidget/AppWidgetHost;->sServiceInitialized:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.app_widgets"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v3

    sput-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist deleteAllHosts()V
    .locals 3

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-object v0, v2

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist updateAppWidgetDeferred(I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetDeferred: null listener for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHost"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidgetDeferred(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist allocateAppWidgetId()I
    .locals 3

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist clearViews()V
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p0, p2, v0}, Landroid/appwidget/AppWidgetHost;->setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V

    return-object v0
.end method

.method public whitelist deleteAppWidgetId(I)V
    .locals 4

    const-string v0, "AppWidgetHost"

    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppWidgetId() appWidgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Stack:"

    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist deleteHost()V
    .locals 3

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist dispatchOnAppWidgetRemoved(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHost;->onAppWidgetRemoved(I)V

    return-void
.end method

.method public whitelist getAppWidgetIds()[I
    .locals 3

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist hidden_semStartListening()Z
    .locals 10

    const-string v0, "AppWidgetHost"

    const-string/jumbo v1, "semStartListening()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v5, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/PendingHostUpdate;

    iget v7, v6, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    iget v8, v6, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {v5, v7, v8, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :pswitch_1
    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    iget v7, v6, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget v8, v6, Landroid/appwidget/PendingHostUpdate;->viewId:I

    const/4 v9, 0x4

    invoke-virtual {v5, v9, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :pswitch_2
    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    iget v7, v6, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v8, v6, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v9, 0x2

    invoke-virtual {v5, v9, v7, v1, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :pswitch_3
    iget-object v7, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    iget v8, v6, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v9, v6, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v7, v5, v8, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    nop

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return v5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onAppWidgetRemoved(I)V
    .locals 0

    return-void
.end method

.method protected whitelist onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2

    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object v0
.end method

.method protected whitelist onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_0
    return-void
.end method

.method protected whitelist onProvidersChanged()V
    .locals 0

    return-void
.end method

.method public blacklist removeListener(I)V
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist semStartAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .locals 9

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->semCreateAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v0

    move v3, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    nop

    return-void

    :cond_1
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public blacklist setAppWidgetHidden()V
    .locals 3

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->setAppWidgetHidden(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method

.method public blacklist setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V
    .locals 4

    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    nop

    invoke-interface {p2, v0}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    .locals 9

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v0

    move v3, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    nop

    return-void

    :cond_1
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public whitelist startListening()V
    .locals 7

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v4, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/PendingHostUpdate;

    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHost;->dispatchOnAppWidgetRemoved(I)V

    goto :goto_2

    :pswitch_1
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget v6, v4, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    goto :goto_2

    :pswitch_2
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_2

    :pswitch_3
    iget v5, v4, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iget-object v6, v4, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v5, v6}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    nop

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist stopListening()V
    .locals 3

    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContextOpPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist-max-o updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetView, appWidgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHost"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method greylist-max-o viewDataChanged(II)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHost;->getListener(I)Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewDataChanged, appWidgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHost"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->onViewDataChanged(I)V

    :cond_0
    return-void
.end method
