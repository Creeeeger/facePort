.class public Landroid/hardware/scontext/SContextSLocationCore;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextSLocationCore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextSLocationCore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextSLocationCore$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSLocationCore$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextSLocationCore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextSLocationCore;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist getAccuracy()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getAction()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDataArray()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "DataArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDataSize()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDistance()F
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Distance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public blacklist getErrorCode()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "ErrorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getFenceID()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "GeoFenceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getFuncType()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "FunctionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getLatitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMode()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStatus()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "GeoFenceStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStatusArray()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "EventStatusArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSuccessGpsCount()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "SuccessGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeStamp()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTimeStampArray()[J
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "TimeStampArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTotalGpsCount()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getTypeArray()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "EventTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
