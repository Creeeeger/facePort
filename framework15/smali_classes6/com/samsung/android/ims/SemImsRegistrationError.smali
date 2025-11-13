.class public Lcom/samsung/android/ims/SemImsRegistrationError;
.super Ljava/lang/Object;
.source "SemImsRegistrationError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/SemImsRegistrationError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDeregistrationReason:I

.field private blacklist mDetailedDeregiReason:I

.field private blacklist mSipErrorCode:I

.field private blacklist mSipErrorReason:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/ims/SemImsRegistrationError$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/SemImsRegistrationError$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/SemImsRegistrationError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    iput-object p2, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    iput p4, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/SemImsRegistrationError-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistrationError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeregistrationReason()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    return v0
.end method

.method public blacklist getDetailedDeregiReason()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    return v0
.end method

.method public whitelist getSipErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    return v0
.end method

.method public whitelist getSipErrorReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistrationError;->mDeregistrationReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
