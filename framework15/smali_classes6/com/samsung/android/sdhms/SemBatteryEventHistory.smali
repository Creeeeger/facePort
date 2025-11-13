.class public Lcom/samsung/android/sdhms/SemBatteryEventHistory;
.super Ljava/lang/Object;
.source "SemBatteryEventHistory.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
    }
.end annotation


# static fields
.field public static final whitelist BATTERY_STATUS_CHARGING:I = 0x2

.field public static final whitelist BATTERY_STATUS_DISCHARGING:I = 0x4

.field public static final whitelist BATTERY_STATUS_FULL:I = 0x10

.field public static final whitelist BATTERY_STATUS_NOT_CHARGING:I = 0x8

.field public static final whitelist BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemBatteryEventHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PLUGGED_STATE_AC:I = 0x1

.field public static final whitelist PLUGGED_STATE_NONE:I = 0x0

.field public static final whitelist PLUGGED_STATE_USB:I = 0x2

.field public static final whitelist PLUGGED_STATE_WIRELESS:I = 0x4

.field public static final whitelist POWER_SAVE_STATE_OFF:I = 0x0

.field public static final whitelist POWER_SAVE_STATE_ON:I = 0x1

.field public static final whitelist POWER_STATE_OFF:I = 0x0

.field public static final whitelist POWER_STATE_ON:I = 0x1

.field public static final whitelist PROTECT_BATTERY_STATE_OFF:I = 0x0

.field public static final whitelist PROTECT_BATTERY_STATE_ON:I = 0x1

.field public static final whitelist PROTECT_BATTERY_STATE_ON_ADAPTIVE:I = 0x8

.field public static final whitelist PROTECT_BATTERY_STATE_ON_BASIC:I = 0x4

.field public static final whitelist PROTECT_BATTERY_STATE_ON_LTC:I = 0x2

.field public static final whitelist PROTECT_BATTERY_STATE_ON_SLEEPING:I = 0x10

.field public static final whitelist TYPE_BATTERY_LEVEL:I = 0x1

.field public static final whitelist TYPE_BATTERY_PLUGGED_STATE:I = 0x2

.field public static final whitelist TYPE_BATTERY_STATUS:I = 0x20

.field public static final whitelist TYPE_CURRENT_BATTERY_STATE:I = -0x1

.field public static final whitelist TYPE_POWER_SAVE_STATE:I = 0x8

.field public static final whitelist TYPE_POWER_STATE:I = 0x4

.field public static final whitelist TYPE_PROTECT_BATTERY_STATE:I = 0x10


# instance fields
.field private final blacklist eventType:I

.field private final blacklist eventValue:I

.field private blacklist updateTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemBatteryEventHistory$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->-$$Nest$fgetupdateTime(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->-$$Nest$fgeteventType(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->-$$Nest$fgeteventValue(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryEventHistory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->getUpdatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->getType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    return-void
.end method


# virtual methods
.method public whitelist clone()Lcom/samsung/android/sdhms/SemBatteryEventHistory;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->clone()Lcom/samsung/android/sdhms/SemBatteryEventHistory;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    return v0
.end method

.method public whitelist getUpdatedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    return-wide v0
.end method

.method public whitelist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    return v0
.end method

.method public blacklist shiftTimestamp(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
