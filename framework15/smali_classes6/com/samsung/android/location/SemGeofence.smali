.class public Lcom/samsung/android/location/SemGeofence;
.super Ljava/lang/Object;
.source "SemGeofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/location/SemGeofence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBssid:Ljava/lang/String;

.field private blacklist mBssidList:[Ljava/lang/String;

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private blacklist mRadius:I

.field private blacklist mRequestId:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/location/SemGeofence$1;

    invoke-direct {v0}, Lcom/samsung/android/location/SemGeofence$1;-><init>()V

    sput-object v0, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IDDI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    iput-wide p2, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    iput-wide p4, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    iput p6, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(IDDI[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    iput-wide p2, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    iput-wide p4, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    iput p6, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    iput-object p2, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I[Ljava/lang/String;DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    iput-wide p3, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    iput-wide p5, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    iput-object p2, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mRequestId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/location/SemGeofence-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemGeofence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBssids()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    return-wide v0
.end method

.method public blacklist getRadius()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    return v0
.end method

.method public blacklist getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    return v0
.end method

.method public blacklist setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/location/SemGeofence;->mRequestId:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mRequestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
