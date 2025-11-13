.class public abstract Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DS]SGEListenerCompat"


# instance fields
.field private final mDisplayId:I

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    return p0
.end method


# virtual methods
.method public abstract onExclusionChanged(Landroid/graphics/Region;)V
.end method

.method public onExclusionChanged(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->onExclusionChanged(Landroid/graphics/Region;)V

    return-void
.end method

.method public register()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mRegistered:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "[DS]SGEListenerCompat"

    const-string v1, "Failed to register window manager callbacks"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mRegistered:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "[DS]SGEListenerCompat"

    const-string v1, "Failed to unregister window manager callbacks"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
