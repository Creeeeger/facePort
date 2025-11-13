.class public abstract Landroid/view/accessibility/AccessibilityDisplayProxy;
.super Ljava/lang/Object;
.source "AccessibilityDisplayProxy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_CONNECTION_ID:I = -0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AccessibilityDisplayProxy"


# instance fields
.field private blacklist mConnectionId:I

.field private blacklist mDisplayId:I

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInstalledAndEnabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmConnectionId(Landroid/view/accessibility/AccessibilityDisplayProxy;I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendServiceInfos(Landroid/view/accessibility/AccessibilityDisplayProxy;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->sendServiceInfos()V

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/concurrent/Executor;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    iput p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mDisplayId:I

    iput-object p2, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1, v2}, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;-><init>(Landroid/view/accessibility/AccessibilityDisplayProxy;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iput-object p3, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    return-void
.end method

.method private blacklist sendServiceInfos()V
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setInstalledAndEnabledServices(Ljava/util/List;)V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityDisplayProxy"

    const-string v3, "Error while setting AccessibilityServiceInfos"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    const/4 v2, -0x2

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mDisplayId:I

    return v0
.end method

.method public final whitelist getInstalledAndEnabledServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityDisplayProxy"

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getWindows()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnDisplay(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist interrupt()V
    .locals 0

    return-void
.end method

.method public whitelist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public whitelist onProxyConnected()V
    .locals 0

    return-void
.end method

.method public whitelist setAccessibilityFocusAppearance(II)V
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setFocusAppearance(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityDisplayProxy"

    const-string v3, "Error while setting the strokeWidth and color of the accessibility focus rectangle"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setInstalledAndEnabledServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy;->mInstalledAndEnabledServices:Ljava/util/List;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->sendServiceInfos()V

    return-void
.end method
