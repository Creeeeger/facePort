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

    .line 96
    new-instance v0, Lcom/samsung/android/camera/iris/Iris$1;

    invoke-direct {v0}, Lcom/samsung/android/camera/iris/Iris$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/iris/Iris;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/camera/iris/Iris-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/Iris;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;IIJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "groupId"    # I
    .param p3, "irisId"    # I
    .param p4, "deviceId"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    .line 34
    iput p2, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    .line 35
    iput p3, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    .line 36
    iput-wide p4, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceId()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    return-wide v0
.end method

.method public blacklist getGroupId()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    return v0
.end method

.method public blacklist getIrisId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget-object v0, p0, Lcom/samsung/android/camera/iris/Iris;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/samsung/android/camera/iris/Iris;->mIrisId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-wide v0, p0, Lcom/samsung/android/camera/iris/Iris;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    return-void
.end method
