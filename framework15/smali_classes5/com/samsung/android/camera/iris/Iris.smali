.class public final Lcom/samsung/android/camera/iris/Iris;
.super Ljava/lang/Object;
.source "Iris.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDeviceId:J

.field private blacklist mGroupId:I

.field private blacklist mIrisId:I

.field private blacklist mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/iris/Iris$1;

    invoke-direct {v0}, Lcom/samsung/android/camera/iris/Iris$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/iris/Iris;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/camera/iris/Iris-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/Iris;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    iput p3, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    iput-wide p4, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    return-wide v0
.end method

.method public blacklist getGroupId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    return v0
.end method

.method public blacklist getIrisId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
