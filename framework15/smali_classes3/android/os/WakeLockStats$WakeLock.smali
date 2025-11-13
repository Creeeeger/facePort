.class public Landroid/os/WakeLockStats$WakeLock;
.super Ljava/lang/Object;
.source "WakeLockStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WakeLockStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeLock"
.end annotation


# static fields
.field public static final blacklist NAME_AGGREGATED:Ljava/lang/String; = "wakelockstats_aggregated"


# instance fields
.field public final blacklist backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

.field public final blacklist isAggregated:Z

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

.field public final blacklist uid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLock;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLock;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ZLandroid/os/WakeLockStats$WakeLockData;Landroid/os/WakeLockStats$WakeLockData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    iput-object p2, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/os/WakeLockStats$WakeLock;->isAggregated:Z

    iput-object p4, p0, Landroid/os/WakeLockStats$WakeLock;->totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    iput-object p5, p0, Landroid/os/WakeLockStats$WakeLock;->backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/WakeLockStats$WakeLock;->isAggregated:Z

    new-instance v0, Landroid/os/WakeLockStats$WakeLockData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/WakeLockStats$WakeLockData;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats$WakeLockData-IA;)V

    iput-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    new-instance v0, Landroid/os/WakeLockStats$WakeLockData;

    invoke-direct {v0, p1, v1}, Landroid/os/WakeLockStats$WakeLockData;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats$WakeLockData-IA;)V

    iput-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WakeLockStats$WakeLock-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats$WakeLock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist isDataValid(Landroid/os/WakeLockStats$WakeLockData;Landroid/os/WakeLockStats$WakeLockData;)Z
    .locals 4

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/WakeLockStats$WakeLockData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/WakeLockStats$WakeLockData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    iget v1, p1, Landroid/os/WakeLockStats$WakeLockData;->timesAcquired:I

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    iget-wide v2, p1, Landroid/os/WakeLockStats$WakeLockData;->totalTimeHeldMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    iget-wide v2, p1, Landroid/os/WakeLockStats$WakeLockData;->timeHeldMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/os/WakeLockStats$WakeLock;->isAggregated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    invoke-static {v0, p1}, Landroid/os/WakeLockStats$WakeLockData;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLockData;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/os/WakeLockStats$WakeLock;->backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    invoke-static {v0, p1}, Landroid/os/WakeLockStats$WakeLockData;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLockData;Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/WakeLockStats$WakeLock;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats$WakeLock;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAggregated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/WakeLockStats$WakeLock;->isAggregated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalWakeLockData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats$WakeLock;->totalWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundWakeLockData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats$WakeLock;->backgroundWakeLockData:Landroid/os/WakeLockStats$WakeLockData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
