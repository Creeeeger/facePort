.class public final Landroid/os/BatteryStats$ProcessStateChange;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessStateChange"
.end annotation


# static fields
.field private static final blacklist LARGE_UID_FLAG:I = -0x80000000

.field private static final blacklist PROC_STATE_MASK:I = 0x7f000000

.field private static final blacklist PROC_STATE_SHIFT:I

.field private static final blacklist SMALL_UID_MASK:I = 0xffffff


# instance fields
.field public blacklist processState:I

.field public blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/high16 v0, 0x7f000000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Landroid/os/BatteryStats$ProcessStateChange;->PROC_STATE_SHIFT:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist formatForBatteryHistory()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    invoke-static {v1}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/high16 v1, 0x7f000000

    and-int/2addr v1, v0

    sget v2, Landroid/os/BatteryStats$ProcessStateChange;->PROC_STATE_SHIFT:I

    ushr-int/2addr v1, v2

    iput v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    iget v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized proc state in battery history: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    :cond_0
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    const v1, -0x7f000001

    and-int/2addr v1, v0

    iput v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    :goto_0
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 3

    iget v0, p0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    sget v1, Landroid/os/BatteryStats$ProcessStateChange;->PROC_STATE_SHIFT:I

    shl-int/2addr v0, v1

    iget v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
