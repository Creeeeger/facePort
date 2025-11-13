.class public Lcom/android/server/net/BaseNetdEventCallback;
.super Landroid/net/INetdEventCallback$Stub;
.source "BaseNetdEventCallback.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/INetdEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectEvent(Ljava/lang/String;IJI)V
    .locals 0

    return-void
.end method

.method public blacklist onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 0

    return-void
.end method

.method public blacklist onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
