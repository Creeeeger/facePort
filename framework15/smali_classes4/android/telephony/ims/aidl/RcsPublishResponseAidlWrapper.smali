.class public Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;
.super Ljava/lang/Object;
.source "RcsPublishResponseAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;


# instance fields
.field private final blacklist mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    return-void
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
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onCommandError(I)V
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
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
