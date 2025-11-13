.class public Lcom/android/settings/localepicker/OverlayManagerConnection;
.super Ljava/lang/Object;
.source "OverlayManagerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayManagerConnection"

.field private static mOverlayManagerConnection:Lcom/android/settings/localepicker/OverlayManagerConnection;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field private mLocaleOverlayManager:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

.field private mServiceConnectionStatus:Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLocaleOverlayManager(Lcom/android/settings/localepicker/OverlayManagerConnection;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mLocaleOverlayManager:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnectionStatus(Lcom/android/settings/localepicker/OverlayManagerConnection;)Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mServiceConnectionStatus:Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsBound(Lcom/android/settings/localepicker/OverlayManagerConnection;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLocaleOverlayManager(Lcom/android/settings/localepicker/OverlayManagerConnection;Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mLocaleOverlayManager:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/localepicker/OverlayManagerConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/OverlayManagerConnection$1;-><init>(Lcom/android/settings/localepicker/OverlayManagerConnection;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static getInstance()Lcom/android/settings/localepicker/OverlayManagerConnection;
    .locals 2

    .line 45
    const-class v0, Lcom/android/settings/localepicker/OverlayManagerConnection;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/android/settings/localepicker/OverlayManagerConnection;->mOverlayManagerConnection:Lcom/android/settings/localepicker/OverlayManagerConnection;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/android/settings/localepicker/OverlayManagerConnection;

    invoke-direct {v1}, Lcom/android/settings/localepicker/OverlayManagerConnection;-><init>()V

    sput-object v1, Lcom/android/settings/localepicker/OverlayManagerConnection;->mOverlayManagerConnection:Lcom/android/settings/localepicker/OverlayManagerConnection;

    .line 49
    :cond_0
    sget-object v1, Lcom/android/settings/localepicker/OverlayManagerConnection;->mOverlayManagerConnection:Lcom/android/settings/localepicker/OverlayManagerConnection;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method bindService(Landroid/content/Context;Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;)V
    .locals 4

    .line 54
    iput-object p2, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mServiceConnectionStatus:Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

    .line 55
    iget-object v0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mLocaleOverlayManager:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.localeoverlaymanager"

    const-string v2, "com.samsung.android.localeoverlaymanager.ResourceOverlayService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-interface {p2}, Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;->onServiceDisconnected()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p2, v0}, Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;->onServiceConnected(Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method unbindService(Landroid/content/Context;)V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :cond_0
    :goto_0
    const-class p0, Lcom/android/settings/localepicker/OverlayManagerConnection;

    monitor-enter p0

    const/4 p1, 0x0

    .line 81
    :try_start_1
    sput-object p1, Lcom/android/settings/localepicker/OverlayManagerConnection;->mOverlayManagerConnection:Lcom/android/settings/localepicker/OverlayManagerConnection;

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
