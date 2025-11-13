.class public Lcom/samsung/android/knox/net/nap/Profile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activationState:I

.field public jsonProfile:Ljava/lang/String;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/net/nap/Profile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/nap/Profile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/nap/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/net/nap/Profile;->jsonProfile:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/net/nap/Profile;->userId:I

    iput p1, p0, Lcom/samsung/android/knox/net/nap/Profile;->activationState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/nap/Profile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/nap/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivationState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/net/nap/Profile;->activationState:I

    return p0
.end method

.method public getJsonProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/nap/Profile;->jsonProfile:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/net/nap/Profile;->userId:I

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->jsonProfile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/nap/Profile;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/net/nap/Profile;->activationState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/net/nap/Profile;->jsonProfile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/net/nap/Profile;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/net/nap/Profile;->activationState:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
