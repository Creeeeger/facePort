.class public Lsamsung/uwb/RangingMeasure;
.super Ljava/lang/Object;
.source "RangingMeasure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RangingMeasure;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNoOfRangingMeasures:I

.field private mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

.field private mRangingType:I

.field private mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lsamsung/uwb/RangingMeasure$1;

    invoke-direct {v0}, Lsamsung/uwb/RangingMeasure$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RangingMeasure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    .line 44
    sget-object v0, Lsamsung/uwb/TwoWayRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsamsung/uwb/TwoWayRangingData;

    iput-object v0, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    .line 45
    const-class v0, Lsamsung/uwb/OneWayRangingData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lsamsung/uwb/OneWayRangingData;

    iput-object v0, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingMeasure {, noOfRangingMeasures = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oneWayRangingData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", twoWayRangingData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    .line 109
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 98
    iget v0, p0, Lsamsung/uwb/RangingMeasure;->mNoOfRangingMeasures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lsamsung/uwb/RangingMeasure;->mTwoWayRangingData:[Lsamsung/uwb/TwoWayRangingData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lsamsung/uwb/RangingMeasure;->mOneWayRangingData:Lsamsung/uwb/OneWayRangingData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget p0, p0, Lsamsung/uwb/RangingMeasure;->mRangingType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
