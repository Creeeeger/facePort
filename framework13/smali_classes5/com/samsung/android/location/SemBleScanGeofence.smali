.class public Lcom/samsung/android/location/SemBleScanGeofence;
.super Ljava/lang/Object;
.source "SemBleScanGeofence.java"


# instance fields
.field private final blacklist mAddress:[Ljava/lang/String;

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private final blacklist mRequestId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # [Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    iput-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    .line 33
    iput-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    .line 42
    iput-object p1, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mAddress:[Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mRequestId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private blacklist isLatLonValid(DD)Z
    .locals 6
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 64
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 65
    .local v0, "ERROR_TORLERANCE":D
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    .line 68
    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v2, v2, p1

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 69
    return v3

    .line 70
    :cond_0
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v2, v4, p3

    if-gez v2, :cond_1

    .line 71
    return v3

    .line 75
    :cond_1
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, p1, v4

    if-gez v2, :cond_2

    cmpg-double v2, p3, v4

    if-ltz v2, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method


# virtual methods
.method public blacklist getAddress()[Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mAddress:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLatitude()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    return-wide v0
.end method

.method public blacklist getRequestId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setGeopoint(DD)Z
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/location/SemBleScanGeofence;->isLatLonValid(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    .line 59
    iput-wide p3, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    .line 60
    const/4 v0, 0x1

    return v0
.end method
