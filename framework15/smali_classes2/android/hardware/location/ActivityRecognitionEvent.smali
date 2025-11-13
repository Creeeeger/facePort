.class public Landroid/hardware/location/ActivityRecognitionEvent;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mActivity:Ljava/lang/String;

.field private final greylist-max-o mEventType:I

.field private final greylist-max-o mTimestampNs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/ActivityRecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/location/ActivityRecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    iput-wide p3, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getEventType()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    return v0
.end method

.method public greylist-max-o getTimestampNs()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Activity=\'%s\', EventType=%s, TimestampNs=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
