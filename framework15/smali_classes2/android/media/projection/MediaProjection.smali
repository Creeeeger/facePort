.class public final Landroid/media/projection/MediaProjection;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjection$MediaProjectionCallback;,
        Landroid/media/projection/MediaProjection$Callback;,
        Landroid/media/projection/MediaProjection$CallbackRecord;
    }
.end annotation


# static fields
.field static final blacklist MEDIA_PROJECTION_REQUIRES_CALLBACK:J = 0x101592aaL

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaProjection"


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjection$Callback;",
            "Landroid/media/projection/MediaProjection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final greylist-max-o mImpl:Landroid/media/projection/IMediaProjection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V
    .locals 1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-direct {p0, p1, p2, v0}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;Landroid/hardware/display/DisplayManager;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;Landroid/hardware/display/DisplayManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    iput-object p1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    new-instance v1, Landroid/media/projection/MediaProjection$MediaProjectionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$MediaProjectionCallback-IA;)V

    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iput-object p3, p0, Landroid/media/projection/MediaProjection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaProjection"

    const-string v2, "Content Recording: Failed to start media projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to start media projection"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist shouldMediaProjectionRequireCallback()Z
    .locals 2

    const-wide/32 v0, 0x101592aa

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setWindowManagerMirroringEnabled(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "MediaProjection"

    const-string v2, "Failed to create virtual display."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 5

    invoke-direct {p0}, Landroid/media/projection/MediaProjection;->shouldMediaProjectionRequireCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must register a callback before starting capture, to manage resources in response to MediaProjection states."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "MediaProjection"

    const-string v2, "Content Recording: no callback registered for virtual display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v0

    if-eqz p6, :cond_2

    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    :cond_2
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->dexMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-eq v4, v3, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {v0, v3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    :cond_6
    invoke-virtual {p0, v0, p7, p8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o createVirtualDisplay(Ljava/lang/String;IIIZLandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 3

    const/16 v0, 0x12

    if-eqz p5, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v1

    if-eqz p6, :cond_1

    invoke-virtual {v1, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    :cond_1
    invoke-virtual {p0, v1, p7, p8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o getProjection()Landroid/media/projection/IMediaProjection;
    .locals 1

    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    return-object v0
.end method

.method public whitelist registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .locals 4

    const-string v0, "MediaProjection"

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjection$Callback;

    if-nez p2, :cond_0

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p2, v2

    :cond_0
    iget-object v2, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    new-instance v3, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-direct {v3, v1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;-><init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Content Recording: failed to create new Handler to register Callback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catch_1
    move-exception v1

    const-string v2, "Content Recording: cannot register null Callback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
.end method

.method public whitelist stop()V
    .locals 3

    const-string v0, "MediaProjection"

    :try_start_0
    const-string v1, "Content Recording: stopping projection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {v1}, Landroid/media/projection/IMediaProjection;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to stop projection"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjection$Callback;

    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaProjection"

    const-string v2, "Content Recording: cannot unregister null Callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
