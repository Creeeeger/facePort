.class public final Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
.super Ljava/lang/Object;
.source "SipDelegateConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDelegateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpSecConfiguration"
.end annotation


# instance fields
.field private final blacklist mLastLocalTxPort:I

.field private final blacklist mLastRemoteTxPort:I

.field private final blacklist mLocalRxPort:I

.field private final blacklist mLocalTxPort:I

.field private final blacklist mRemoteRxPort:I

.field private final blacklist mRemoteTxPort:I

.field private final blacklist mSecurityHeader:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(IIIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    iput p2, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    iput p3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    iput p4, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    iput p5, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    iput p6, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    iput-object p7, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    return-void
.end method

.method public static blacklist fromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    .locals 9

    new-instance v8, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public blacklist addToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getLastLocalTxPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    return v0
.end method

.method public whitelist getLastRemoteTxPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    return v0
.end method

.method public whitelist getLocalRxPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    return v0
.end method

.method public whitelist getLocalTxPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    return v0
.end method

.method public whitelist getRemoteRxPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    return v0
.end method

.method public whitelist getRemoteTxPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    return v0
.end method

.method public whitelist getSipSecurityVerifyHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpSecConfiguration{localTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastLocalTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRemoteTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", securityHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
