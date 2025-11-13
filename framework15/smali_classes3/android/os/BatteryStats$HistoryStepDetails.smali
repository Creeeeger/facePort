.class public final Landroid/os/BatteryStats$HistoryStepDetails;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryStepDetails"
.end annotation


# instance fields
.field public greylist-max-o appCpuSTime1:I

.field public greylist-max-o appCpuSTime2:I

.field public greylist-max-o appCpuSTime3:I

.field public greylist-max-o appCpuUTime1:I

.field public greylist-max-o appCpuUTime2:I

.field public greylist-max-o appCpuUTime3:I

.field public greylist-max-o appCpuUid1:I

.field public greylist-max-o appCpuUid2:I

.field public greylist-max-o appCpuUid3:I

.field public greylist-max-o statIOWaitTime:I

.field public greylist-max-o statIdlTime:I

.field public greylist-max-o statIrqTime:I

.field public greylist-max-o statSoftIrqTime:I

.field public greylist-max-o statSubsystemPowerState:Ljava/lang/String;

.field public greylist-max-o statSystemTime:I

.field public greylist-max-o statUserTime:I

.field public greylist-max-o systemTime:I

.field public greylist-max-o userTime:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    return-void
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
