.class public Lcom/android/internal/os/SemUidPowerInfo;
.super Ljava/lang/Object;
.source "SemUidPowerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/SemUidPowerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist actualGpsTime:J

.field public blacklist audioTime:J

.field public blacklist bgTime:J

.field public blacklist btData:J

.field public blacklist btScan:I

.field public blacklist cameraRunTime:J

.field public blacklist cpuTime:J

.field public blacklist fgTime:J

.field public blacklist gpsTime:J

.field public blacklist killCount:J

.field public blacklist mobileActive:J

.field public blacklist mobileData:J

.field public blacklist mobilePackets:J

.field public blacklist networkWakeup:J

.field public blacklist power:D

.field public blacklist screenPower:D

.field public blacklist screenTime:J

.field public blacklist shouldHide:Z

.field public blacklist smearedPower:D

.field public blacklist spkLevel:J

.field public blacklist spkTime:J

.field public blacklist syncTime:J

.field public blacklist uid:I

.field public blacklist wakelockTime:J

.field public blacklist wakeupAlarm:I

.field public blacklist wifiData:J

.field public blacklist wifiPackets:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Lcom/android/internal/os/SemUidPowerInfo$1;

    invoke-direct {v0}, Lcom/android/internal/os/SemUidPowerInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/SemUidPowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/internal/os/SemUidPowerInfo;->uid:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    .line 56
    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    .line 57
    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->shouldHide:Z

    .line 59
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    .line 60
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    .line 61
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    .line 62
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    .line 63
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    .line 64
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    .line 65
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    .line 66
    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    .line 67
    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    .line 68
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    .line 69
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    .line 70
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    .line 71
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    .line 72
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    .line 73
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    .line 74
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    .line 75
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    .line 76
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    .line 77
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    .line 78
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    .line 79
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    .line 80
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    .line 81
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->uid:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->shouldHide:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    .line 204
    return-void
.end method


# virtual methods
.method public blacklist addDelta(Lcom/android/internal/os/SemUidPowerInfo;)V
    .locals 4
    .param p1, "delta"    # Lcom/android/internal/os/SemUidPowerInfo;

    .line 149
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    .line 150
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    .line 151
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    .line 152
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    .line 153
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    .line 154
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    .line 155
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    .line 156
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    .line 157
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    .line 158
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    .line 159
    iget v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    iget v1, p1, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    .line 160
    iget v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    iget v1, p1, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    .line 161
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    .line 162
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    .line 163
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    .line 164
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    .line 165
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    .line 166
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    .line 167
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    .line 168
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    .line 169
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    .line 170
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    .line 171
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    .line 172
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    .line 173
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    iget-wide v2, p1, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    .line 174
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reset()V
    .locals 3

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    .line 121
    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    .line 122
    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->shouldHide:Z

    .line 124
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    .line 125
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    .line 126
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    .line 127
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    .line 128
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    .line 129
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    .line 130
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    .line 131
    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    .line 132
    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    .line 133
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    .line 134
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    .line 135
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    .line 136
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    .line 137
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    .line 138
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    .line 139
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    .line 140
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    .line 141
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    .line 142
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    .line 143
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    .line 144
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    .line 145
    iput-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    .line 146
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 85
    const-string v1, "power %f cpu %d wake %d mActive %d mPkt %d wPkt %d walarm %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Lcom/android/internal/os/SemUidPowerInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/internal/os/SemUidPowerInfo;

    .line 91
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    .line 92
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    .line 93
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    .line 94
    iget-boolean v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->shouldHide:Z

    iput-boolean v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->shouldHide:Z

    .line 95
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    .line 96
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    .line 97
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    .line 98
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    .line 99
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    .line 100
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    .line 101
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    .line 102
    iget v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    .line 103
    iget v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    iput v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    .line 104
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    .line 105
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    .line 106
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    .line 107
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    .line 108
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    .line 109
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    .line 110
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    .line 111
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    .line 112
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    .line 113
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    .line 114
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    .line 115
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    .line 116
    iget-wide v0, p1, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    iput-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    .line 117
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 225
    iget v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 227
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 228
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 229
    iget-boolean v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->shouldHide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    iget v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-wide v0, p0, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    return-void
.end method
