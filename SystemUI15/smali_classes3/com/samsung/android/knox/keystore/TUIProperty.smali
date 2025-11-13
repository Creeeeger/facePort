.class public Lcom/samsung/android/knox/keystore/TUIProperty;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/TUIProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public loginExpirationPeriod:I

.field public loginRetry:I

.field public pin:[B

.field public secretImage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/keystore/TUIProperty$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/TUIProperty$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/TUIProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
