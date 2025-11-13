.class public Lcom/android/server/net/BaseNetworkObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "BaseNetworkObserver.java"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    return-void
.end method

.method public blacklist addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    return-void
.end method

.method public blacklist interfaceAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist interfaceClassDataActivityChanged(IZJI)V
    .locals 0

    return-void
.end method

.method public blacklist interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public blacklist interfaceRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public blacklist limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist routeRemoved(Landroid/net/RouteInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist routeUpdated(Landroid/net/RouteInfo;)V
    .locals 0

    return-void
.end method
