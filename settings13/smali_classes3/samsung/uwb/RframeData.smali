.class public Lsamsung/uwb/RframeData;
.super Ljava/lang/Object;
.source "RframeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/RframeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNoOfRframeMeasures:I

.field private mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

.field private mSessionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lsamsung/uwb/RframeData$1;

    invoke-direct {v0}, Lsamsung/uwb/RframeData$1;-><init>()V

    sput-object v0, Lsamsung/uwb/RframeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsamsung/uwb/RframeData;->mSessionId:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/RframeData;->mNoOfRframeMeasures:I

    .line 58
    sget-object v0, Lsamsung/uwb/RframeMeasures;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lsamsung/uwb/RframeMeasures;

    iput-object p1, p0, Lsamsung/uwb/RframeData;->mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RframeData {, sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsamsung/uwb/RframeData;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", noOfrframeMeasures = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsamsung/uwb/RframeData;->mNoOfRframeMeasures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rframeMeasures = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsamsung/uwb/RframeData;->mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

    .line 78
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
    .locals 2

    .line 50
    iget-wide v0, p0, Lsamsung/uwb/RframeData;->mSessionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget v0, p0, Lsamsung/uwb/RframeData;->mNoOfRframeMeasures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object p0, p0, Lsamsung/uwb/RframeData;->mRframeMeasures:[Lsamsung/uwb/RframeMeasures;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
