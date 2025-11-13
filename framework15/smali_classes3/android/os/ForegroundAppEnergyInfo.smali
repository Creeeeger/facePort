.class public final Landroid/os/ForegroundAppEnergyInfo;
.super Ljava/lang/Object;
.source "ForegroundAppEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ForegroundAppEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBatteryDischargeUah:I

.field private blacklist mDisplayPowerUah:I

.field private blacklist mDuration:J

.field private blacklist mEndTime:J

.field private blacklist mStartTime:J

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/os/ForegroundAppEnergyInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ForegroundAppEnergyInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/ForegroundAppEnergyInfo$1;

    invoke-direct {v0}, Landroid/os/ForegroundAppEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/os/ForegroundAppEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    return-void
.end method

.method public constructor blacklist <init>(IJJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    iput-wide p2, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    iput-wide p4, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    iput-wide p6, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    iput p8, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    iput p9, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    invoke-virtual {p0, p1}, Landroid/os/ForegroundAppEnergyInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist initialize()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBatteryDischarged()I
    .locals 1

    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    return v0
.end method

.method public blacklist getDisplayPower()I
    .locals 1

    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    return-wide v0
.end method

.method public blacklist getEndTime()J
    .locals 2

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getStartTime()J
    .locals 2

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    return v0
.end method

.method public blacklist isTimerRunning()Z
    .locals 4

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    return-void
.end method

.method public blacklist reset()V
    .locals 0

    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    return-void
.end method

.method public blacklist setBatteryDischarged(I)V
    .locals 0

    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    return-void
.end method

.method public blacklist setDisplayPower(I)V
    .locals 0

    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    return-void
.end method

.method public blacklist setUid(I)V
    .locals 0

    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    return-void
.end method

.method public blacklist startTimer(J)V
    .locals 2

    iput-wide p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    return-void
.end method

.method public blacklist stopTimer(J)V
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Landroid/os/ForegroundAppEnergyInfo;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-wide p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    iget-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    iget-wide v4, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    sub-long v0, v2, v4

    :cond_0
    iget-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
