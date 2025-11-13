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

    .line 100
    new-instance v0, Lcom/samsung/android/location/SemGeofence$1;

    invoke-direct {v0}, Lcom/samsung/android/location/SemGeofence$1;-><init>()V

    sput-object v0, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IDDI)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    .line 42
    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    .line 43
    iput-wide p2, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    .line 44
    iput-wide p4, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    .line 45
    iput p6, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    .line 46
    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(IDDI[Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # I
    .param p7, "bssid"    # [Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    .line 54
    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    .line 55
    iput-wide p2, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    .line 56
    iput-wide p4, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    .line 57
    iput p6, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    .line 58
    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    .line 69
    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    .line 71
    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    .line 73
    iput-object p2, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(I[Ljava/lang/String;DD)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "address"    # [Ljava/lang/String;
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    .line 82
    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    .line 83
    iput-wide p3, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    .line 84
    iput-wide p5, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    .line 86
    iput-object p2, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mRequestId:Ljava/lang/String;

    .line 142
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

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBssid()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBssids()[Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLatitude()D
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    return-wide v0
.end method

.method public blacklist getRadius()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    return v0
.end method

.method public blacklist getRequestId()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    return v0
.end method

.method public blacklist setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/location/SemGeofence;->mRequestId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 128
    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssidList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mRequestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return-void
.end method
