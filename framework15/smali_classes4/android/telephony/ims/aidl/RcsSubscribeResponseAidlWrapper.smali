.class public Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;
.super Ljava/lang/Object;
.source "RcsSubscribeResponseAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;


# instance fields
.field private final blacklist mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    return-void
.end method

.method private blacklist getTerminatedReasonList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    new-instance v3, Landroid/telephony/ims/RcsContactTerminatedReason;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/telephony/ims/RcsContactTerminatedReason;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist onCommandError(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onResourceTerminated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->getTerminatedReasonList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onResourceTerminated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onTerminated(Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onTerminated(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
