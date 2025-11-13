.class public Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;
.super Ljava/lang/Object;
.source "RcsOptionsResponseAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;


# instance fields
.field private final blacklist mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    return-void
.end method


# virtual methods
.method public whitelist onCommandError(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IOptionsResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
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
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IOptionsResponseCallback;->onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
