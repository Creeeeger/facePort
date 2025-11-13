.class public Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;
.super Ljava/lang/Object;
.source "PkgIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;,
        Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;,
        Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;
    }
.end annotation


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIconLoaderHandler:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;

.field private mUiUpdateHandler:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiUpdateHandler(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mUiUpdateHandler:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddToCache(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->addToCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetIconFromCache(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mCache:Ljava/util/HashMap;

    .line 88
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addToCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 133
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/16 p0, 0x1000

    .line 78
    :try_start_0
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 79
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PkgIconLoader"

    const-string p2, "Exception"

    .line 82
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadIcon(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2

    .line 108
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo-IA;)V

    .line 115
    iput-object p1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->pkgName:Ljava/lang/String;

    .line 116
    iput-object p2, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->imageView:Landroid/widget/ImageView;

    .line 117
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconInfo;->uid:Ljava/lang/Integer;

    .line 118
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mIconLoaderHandler:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public startIconLoaderThread()V
    .locals 3

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppIconLoaderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    new-instance v2, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Landroid/os/Looper;Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler-IA;)V

    iput-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mIconLoaderHandler:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$IconLoaderHandler;

    .line 98
    :cond_0
    new-instance v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler-IA;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mUiUpdateHandler:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader$UiUpdateHandler;

    return-void
.end method

.method public stopIconLoaderThread()V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method
