.class public Lcom/samsung/android/knox/mpos/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/mpos/TACommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public blacklist mErrorMsg:Ljava/lang/String;

.field public blacklist mResponse:[B

.field public blacklist mResponseCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/mpos/TACommandResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/mpos/TACommandResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mpos/TACommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    iput p1, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    iput-object p2, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/mpos/TACommandResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/mpos/TACommandResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/mpos/TACommandResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump()V
    .locals 0

    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    iget-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    array-length v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    return-void
.end method
