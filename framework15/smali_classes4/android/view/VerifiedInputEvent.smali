.class public abstract Landroid/view/VerifiedInputEvent;
.super Ljava/lang/Object;
.source "VerifiedInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedInputEvent$VerifiedInputEventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedInputEvent"

.field protected static final blacklist VERIFIED_KEY:I = 0x1

.field protected static final blacklist VERIFIED_MOTION:I = 0x2


# instance fields
.field private blacklist mDeviceId:I

.field private blacklist mDisplayId:I

.field private blacklist mEventTimeNanos:J

.field private blacklist mSource:I

.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smpeekInt(Landroid/os/Parcel;)I
    .locals 0

    invoke-static {p0}, Landroid/view/VerifiedInputEvent;->peekInt(Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/VerifiedInputEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedInputEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(IIJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/VerifiedInputEvent;->mType:I

    iput p2, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    iput-wide p3, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    iput p5, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    iput p6, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected input event type token in parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist peekInt(Landroid/os/Parcel;)I
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/VerifiedInputEvent;

    iget v3, p0, Landroid/view/VerifiedInputEvent;->mType:I

    iget v4, v2, Landroid/view/VerifiedInputEvent;->mType:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getDeviceId()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    return v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    return v0
.end method

.method public whitelist getEventTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist getSource()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedInputEvent;->mType:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
