.class public Lcom/sec/ims/IMSProfileParams;
.super Ljava/lang/Object;
.source "IMSProfileParams.java"

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

    .line 87
    new-instance v0, Lcom/sec/ims/IMSProfileParams$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSProfileParams$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSProfileParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    .line 17
    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mCallingUid:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

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

    .line 60
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

    .line 7
    invoke-virtual {p0}, Lcom/sec/ims/IMSProfileParams;->clone()Lcom/sec/ims/IMSProfileParams;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 72
    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget p2, p0, Lcom/sec/ims/IMSProfileParams;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-boolean p2, p0, Lcom/sec/ims/IMSProfileParams;->mSendKeepAlive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-boolean p2, p0, Lcom/sec/ims/IMSProfileParams;->mAutoRegistration:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p2, p0, Lcom/sec/ims/IMSProfileParams;->mAvailable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object p2, p0, Lcom/sec/ims/IMSProfileParams;->mUriString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/sec/ims/IMSProfileParams;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
