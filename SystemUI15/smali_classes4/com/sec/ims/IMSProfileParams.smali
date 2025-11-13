.class public Lcom/sec/ims/IMSProfileParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSProfileParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthUserName:Ljava/lang/String;

.field private mAutoRegistration:Z

.field private mAvailable:I

.field private transient mCallingUid:I

.field private transient mCapabilities:Landroid/os/Bundle;

.field private mDomain:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mSendKeepAlive:Z

.field private mUriString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/IMSProfileParams$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSProfileParams$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSProfileParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/IMSUserProfile;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAuthUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getPort()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getSendKeepAlive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAutoRegistration()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getCapabilities()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getAvailability()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getUriString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSProfileParams;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/IMSProfileParams;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/ims/IMSProfileParams;->clone()Lcom/sec/ims/IMSProfileParams;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    return-object p0
.end method

.method public getAutoRegistration()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    return p0
.end method

.method public getAvailability()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    return p0
.end method

.method public getCallingUid()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    return p0
.end method

.method public getCapabilities()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public getMDN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    return p0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getSendKeepAlive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    return p0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
