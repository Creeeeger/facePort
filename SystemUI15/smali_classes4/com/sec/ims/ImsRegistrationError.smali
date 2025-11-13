.class public Lcom/sec/ims/ImsRegistrationError;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/ImsRegistrationError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDeregistrationReason:I

.field mDetailedDeregiReason:I

.field mSipErrorCode:I

.field mSipErrorReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/ImsRegistrationError$1;

    invoke-direct {v0}, Lcom/sec/ims/ImsRegistrationError$1;-><init>()V

    sput-object v0, Lcom/sec/ims/ImsRegistrationError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    iput-object p2, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    iput p3, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    iput p4, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistrationError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeregistrationReason()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return p0
.end method

.method public getDetailedDeregiReason()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    return p0
.end method

.method public getSipErrorCode()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    return p0
.end method

.method public getSipErrorReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
