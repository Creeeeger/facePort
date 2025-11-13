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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLatitude:D

    iput-wide p3, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLongitude:D

    iput p5, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRadius:I

    iput-object p6, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRequestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLatitude:D

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mLongitude:D

    return-wide v0
.end method

.method public blacklist getRadius()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRadius:I

    return v0
.end method

.method public blacklist getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWifiBssidList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mWifiBssids:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setWifiBssids([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/location/SemGeopointGeofence;->mWifiBssids:[Ljava/lang/String;

    return-void
.end method
