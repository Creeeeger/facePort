.class public Lcom/sec/ims/ImsRegistrationError;
.super Ljava/lang/Object;
.source "ImsRegistrationError.java"

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

    .line 67
    new-instance v0, Lcom/sec/ims/ImsRegistrationError$1;

    invoke-direct {v0}, Lcom/sec/ims/ImsRegistrationError$1;-><init>()V

    sput-object v0, Lcom/sec/ims/ImsRegistrationError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    const-string v1, ""

    .line 15
    iput-object v1, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    .line 17
    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/ImsRegistrationError-IA;)V
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 38
    iget p2, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object p2, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget p2, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
