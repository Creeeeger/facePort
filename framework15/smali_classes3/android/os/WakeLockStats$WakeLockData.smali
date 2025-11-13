.class public Landroid/os/WakeLockStats$WakeLockData;
.super Ljava/lang/Object;
.source "WakeLockStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WakeLockStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeLockData"
.end annotation


# static fields
.field public static final blacklist EMPTY:Landroid/os/WakeLockStats$WakeLockData;


# instance fields
.field public final blacklist timeHeldMs:J

.field public final blacklist timesAcquired:I

.field public final blacklist totalTimeHeldMs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLockData;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLockData;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    new-instance v6, Landroid/os/WakeLockStats$WakeLockData;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/WakeLockStats$WakeLockData;-><init>(IJJ)V

    sput-object v6, Landroid/os/WakeLockStats$WakeLockData;->EMPTY:Landroid/os/WakeLockStats$WakeLockData;

    return-void
.end method

.method public constructor blacklist <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    iput-wide p2, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    iput-wide p4, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WakeLockStats$WakeLockData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLockData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist isEmpty()Z
    .locals 4

    iget v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public blacklist isDataValid()Z
    .locals 7

    iget v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-wide v3, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-wide v3, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    iget-wide v3, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    iget-wide v5, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Landroid/os/WakeLockStats$WakeLockData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLockData{timesAcquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalTimeHeldMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeHeldMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
