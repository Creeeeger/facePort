.class public Lcom/sec/ims/options/SipRemoteProfile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/options/SipRemoteProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAvailability:I

.field public transient mCapabilities:Landroid/os/Bundle;

.field private mProfileName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fputmProfileName(Lcom/sec/ims/options/SipRemoteProfile;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/options/SipRemoteProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/options/SipRemoteProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/options/SipRemoteProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/options/SipRemoteProfile;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/options/SipRemoteProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/options/SipRemoteProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/options/SipRemoteProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/options/SipRemoteProfile;->getCapabilities()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/ims/options/SipRemoteProfile;->getAvailability()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/ims/options/SipRemoteProfile;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvailability()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    return p0
.end method

.method public getCapabilities()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    return-object p0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
