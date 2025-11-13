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

    .line 26
    const-class v0, Landroid/os/ForegroundAppEnergyInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ForegroundAppEnergyInfo;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/os/ForegroundAppEnergyInfo$1;

    invoke-direct {v0}, Landroid/os/ForegroundAppEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/os/ForegroundAppEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(IJJJII)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "duration"    # J
    .param p8, "displayPowerUah"    # I
    .param p9, "batteryDischargeUah"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    .line 64
    iput-wide p2, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    .line 65
    iput-wide p4, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    .line 66
    iput-wide p6, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    .line 67
    iput p8, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    .line 68
    iput p9, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    .line 58
    invoke-virtual {p0, p1}, Landroid/os/ForegroundAppEnergyInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method private blacklist initialize()V
    .locals 2

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    .line 158
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    .line 161
    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    .line 162
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBatteryDischarged()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    return v0
.end method

.method public blacklist getDisplayPower()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 128
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    return-wide v0
.end method

.method public blacklist getEndTime()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    return-wide v0
.end method

.method public blacklist getStartTime()J
    .locals 2

    .line 99
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 95
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    return v0
.end method

.method public blacklist isTimerRunning()Z
    .locals 4

    .line 121
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    .line 88
    return-void
.end method

.method public blacklist reset()V
    .locals 0

    .line 148
    invoke-direct {p0}, Landroid/os/ForegroundAppEnergyInfo;->initialize()V

    .line 149
    return-void
.end method

.method public blacklist setBatteryDischarged(I)V
    .locals 0
    .param p1, "dischargedUah"    # I

    .line 140
    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    .line 141
    return-void
.end method

.method public blacklist setDisplayPower(I)V
    .locals 0
    .param p1, "powerUah"    # I

    .line 132
    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    .line 133
    return-void
.end method

.method public blacklist setUid(I)V
    .locals 0
    .param p1, "n"    # I

    .line 91
    iput p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    .line 92
    return-void
.end method

.method public blacklist startTimer(J)V
    .locals 2
    .param p1, "elapsedRealtime"    # J

    .line 107
    iput-wide p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    .line 109
    return-void
.end method

.method public blacklist stopTimer(J)V
    .locals 4
    .param p1, "elapsedRealtime"    # J

    .line 112
    const-wide/16 v0, 0x0

    .line 113
    .local v0, "currentDuration":J
    invoke-virtual {p0}, Landroid/os/ForegroundAppEnergyInfo;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iput-wide p1, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    .line 115
    iget-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    sub-long v0, p1, v2

    .line 117
    :cond_0
    iget-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    .line 118
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mDisplayPowerUah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/os/ForegroundAppEnergyInfo;->mBatteryDischargeUah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
