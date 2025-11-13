.class public Lcom/samsung/android/knox/EnrollData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "EnrollData"


# instance fields
.field public comment:Ljava/lang/String;

.field public constrainedState:I

.field public downloadUrl:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public policyBitMask:I

.field public signature:[B

.field public targetPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/EnrollData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnrollData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnrollData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnrollData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public getConstrainedState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    return p0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getPolicyBitMask()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    return p0
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    return-object p0
.end method

.method public getTargetPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    iput-object p4, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    iput-object p6, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    iput-object p7, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
