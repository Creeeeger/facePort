.class public Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/QuantumSecurityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static QUANTUM_ENCRYPT_KEY_LENGTH:I = 0x10


# instance fields
.field private mCallDirection:I

.field private mCryptoMode:I

.field private mEncryptStatus:I

.field private mLocalPhoneNumber:Ljava/lang/String;

.field private mPeerProfileStatus:I

.field private mQtSessionId:Ljava/lang/String;

.field private mRemoteTelNum:Ljava/lang/String;

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized clearAll()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCallDirection()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    return p0
.end method

.method public getCryptoMode()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    return p0
.end method

.method public declared-synchronized getEncryptStatus()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalPhoneNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getPeerProfileStatus()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    return p0
.end method

.method public declared-synchronized getQtSessionId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteTelNum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    return-object p0
.end method

.method public setCallDirection(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    return-void
.end method

.method public setCryptoMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    return-void
.end method

.method public declared-synchronized setEncryptStatus(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLocalPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPeerProfileStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    return-void
.end method

.method public declared-synchronized setQtSessionId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRemoteTelNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuantumSecurityInfo [mEncryptStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPeerProfileStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCryptoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mQtSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteTelNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
