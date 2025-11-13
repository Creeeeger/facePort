.class public abstract Landroid/app/InstantAppResolverService;
.super Landroid/app/Service;
.source "InstantAppResolverService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;,
        Landroid/app/InstantAppResolverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG_INSTANT:Z

.field public static final greylist-max-o EXTRA_RESOLVE_INFO:Ljava/lang/String; = "android.app.extra.RESOLVE_INFO"

.field public static final greylist-max-o EXTRA_SEQUENCE:Ljava/lang/String; = "android.app.extra.SEQUENCE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_INSTANT()Z
    .locals 1

    sget-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_INSTANT:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Landroid/app/InstantAppResolverService$ServiceHandler;

    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/InstantAppResolverService$ServiceHandler;-><init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method greylist-max-o getLooper()Landroid/os/Looper;
    .locals 1

    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Landroid/app/InstantAppResolverService$1;

    invoke-direct {v0, p0}, Landroid/app/InstantAppResolverService$1;-><init>(Landroid/app/InstantAppResolverService;)V

    return-object v0
.end method

.method public whitelist onGetInstantAppIntentFilter(Landroid/content/Intent;[ILandroid/os/UserHandle;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p4, p5}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    return-void
.end method

.method public whitelist onGetInstantAppIntentFilter(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "PackageManager"

    const-string v1, "New onGetInstantAppIntentFilter is not overridden"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public whitelist onGetInstantAppIntentFilter(Landroid/content/pm/InstantAppRequestInfo;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getHostDigestPrefix()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter(Landroid/content/Intent;[ILandroid/os/UserHandle;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    return-void
.end method

.method public whitelist onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must define onGetInstantAppIntentFilter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onGetInstantAppResolveInfo(Landroid/content/Intent;[ILandroid/os/UserHandle;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p4, p5}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    return-void
.end method

.method public whitelist onGetInstantAppResolveInfo(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public whitelist onGetInstantAppResolveInfo(Landroid/content/pm/InstantAppRequestInfo;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getHostDigestPrefix()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo(Landroid/content/Intent;[ILandroid/os/UserHandle;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    return-void
.end method

.method public whitelist onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must define onGetInstantAppResolveInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
