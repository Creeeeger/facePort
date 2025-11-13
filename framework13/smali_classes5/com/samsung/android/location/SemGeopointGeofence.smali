.class public Lcom/samsung/android/location/SemGeopointGeofence;
.super Ljava/lang/Object;
.source "SemGeopointGeofence.java"


# instance fields
.field private final blacklist mLatitude:D

.field private final blacklist mLongitude:D

.field private final blacklist mRadius:I

.field private final blacklist mRequestId:Ljava/lang/String;

.field private blacklist mWifiBssids:[Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(DDILjava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # I
    .param p6, "requestId"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLatitude:D

    .line 39
    iput-wide p3, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLongitude:D

    .line 40
    iput p5, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRadius:I

    .line 41
    iput-object p6, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRequestId:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getLatitude()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLatitude:D

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLongitude:D

    return-wide v0
.end method

.method public blacklist getRadius()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRadius:I

    return v0
.end method

.method public blacklist getRequestId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWifiBssidList()[Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mWifiBssids:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setWifiBssids([Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiBssids"    # [Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mWifiBssids:[Ljava/lang/String;

    .line 50
    return-void
.end method
