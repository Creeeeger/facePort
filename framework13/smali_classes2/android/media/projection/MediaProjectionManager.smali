.class public final Landroid/media/projection/MediaProjectionManager;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionManager$CallbackDelegate;,
        Landroid/media/projection/MediaProjectionManager$Callback;
    }
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_APP_TOKEN:Ljava/lang/String; = "android.media.projection.extra.EXTRA_APP_TOKEN"

.field public static final greylist-max-o EXTRA_MEDIA_PROJECTION:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaProjectionManager"

.field public static final greylist-max-o TYPE_MIRRORING:I = 0x1

.field public static final greylist-max-o TYPE_PRESENTATION:I = 0x2

.field public static final greylist-max-o TYPE_SCREEN_CAPTURE:I


# instance fields
.field private greylist-max-o mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjectionManager$Callback;",
            "Landroid/media/projection/MediaProjectionManager$CallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 65
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 67
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    .line 68
    return-void
.end method


# virtual methods
.method public greylist-max-o addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 215
    if-eqz p1, :cond_0

    .line 218
    new-instance v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    invoke-direct {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;-><init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 219
    .local v0, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaProjectionManager"

    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 216
    .end local v0    # "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createScreenCaptureIntent()Landroid/content/Intent;
    .locals 4

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040365

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 82
    .local v1, "mediaProjectionPermissionDialogComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const-string v3, "Userid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method public greylist-max-o getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to get the active projection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .line 174
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 178
    .local v1, "projection":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 179
    return-object v0

    .line 181
    :cond_1
    new-instance v0, Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    return-object v0

    .line 175
    .end local v1    # "projection":Landroid/os/IBinder;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public greylist-max-o removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;

    .line 232
    if-eqz p1, :cond_1

    .line 235
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    .line 237
    .local v0, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjectionManager;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaProjectionManager"

    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 242
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 243
    :goto_1
    return-void

    .line 233
    .end local v0    # "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 9

    .line 99
    const-string v0, "MediaProjectionManager"

    const/4 v1, 0x0

    .line 100
    .local v1, "projection":Landroid/media/projection/IMediaProjection;
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 103
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 106
    .local v4, "aInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v7

    .line 110
    nop

    .line 113
    :try_start_1
    iget-object v7, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v7, v8, v2, v6, v6}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v6

    .line 118
    nop

    .line 120
    if-nez v1, :cond_0

    .line 121
    const-string v6, "Can\'t create projection"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-object v5

    .line 125
    :cond_0
    new-instance v0, Landroid/media/projection/MediaProjection;

    iget-object v5, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v1}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    return-object v0

    .line 115
    :catch_0
    move-exception v6

    .line 116
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "unable to create projection"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    return-object v5

    .line 107
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 108
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "unable to look up package name"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-object v5
.end method

.method public greylist-max-o stopActiveProjection()V
    .locals 3

    .line 203
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to stop the currently active media projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
