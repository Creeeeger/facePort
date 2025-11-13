.class public Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;
.super Ljava/lang/Object;
.source "AuthFactorTouchManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AuthFactorTouchManager"

.field private static blacklist mAuthFactorTouchManager:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;


# instance fields
.field private blacklist isEnableListenerRegistered:Z

.field private blacklist isServiceConnected:Z

.field private blacklist mAuthTouchEnableListener:Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mRemoteService:Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

.field private blacklist packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;)Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mAuthTouchEnableListener:Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteService(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;)Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mRemoteService:Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputisEnableListenerRegistered(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->isEnableListenerRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputisServiceConnected(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->isServiceConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mAuthTouchEnableListener:Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoteService(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mRemoteService:Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->isServiceConnected:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->isEnableListenerRegistered:Z

    .line 61
    new-instance v0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;-><init>(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;)V

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mConnection:Landroid/content/ServiceConnection;

    .line 29
    iput-object p1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 31
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mRemoteService:Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->connectService()V

    .line 33
    :cond_0
    return-void
.end method

.method private blacklist connectService()V
    .locals 7

    .line 43
    const-string v0, "com.samsung.cmfa.AuthTouch.AuthFactorTouchService"

    .line 44
    .local v0, "svc":Ljava/lang/String;
    const-string v1, "com.samsung.cmfa.AuthTouch"

    .line 45
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v2, "serviceComponent":Landroid/content/ComponentName;
    invoke-direct {p0, v2}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->isServiceInstalled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v4, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 51
    .end local v3    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mAuthFactorTouchManager:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-direct {v0, p0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mAuthFactorTouchManager:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    .line 39
    :cond_0
    sget-object v0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mAuthFactorTouchManager:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    return-object v0
.end method

.method private blacklist isServiceInstalled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 152
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v0, 0x1

    return v0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method


# virtual methods
.method public blacklist isEnableListenerRegistered()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->isEnableListenerRegistered:Z

    return v0
.end method

.method public blacklist isServiceConnected()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->isServiceConnected:Z

    return v0
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 138
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mRemoteService:Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->connectService()V

    .line 140
    return-void

    .line 144
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    .line 120
    iput-object p1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mAuthTouchEnableListener:Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    .line 121
    return-void
.end method

.method public blacklist registerAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;

    .line 91
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mRemoteService:Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->connectService()V

    .line 93
    return v1

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;->registerAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    nop

    .line 101
    const/4 v0, 0x1

    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    return v1
.end method

.method public blacklist setTouchEvent(ZZ)Z
    .locals 2
    .param p1, "ret"    # Z
    .param p2, "debugMode"    # Z

    .line 124
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mRemoteService:Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->connectService()V

    .line 126
    return v1

    .line 129
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;->setTouchEvent(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v0, 0x1

    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 133
    return v1
.end method

.method public blacklist unregisterAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;

    .line 105
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->mRemoteService:Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->connectService()V

    .line 107
    return v1

    .line 110
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;->unregisterAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    nop

    .line 115
    const/4 v0, 0x1

    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 113
    return v1
.end method
