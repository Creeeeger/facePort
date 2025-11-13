.class public Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;
.super Landroid/os/BatteryStats$ModemActivityCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModemActivityCounterImpl"
.end annotation


# instance fields
.field private final blacklist mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final blacklist mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

.field private final blacklist mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

.field private final blacklist mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "numTxStates"    # I

    .line 4430
    invoke-direct {p0}, Landroid/os/BatteryStats$ModemActivityCounter;-><init>()V

    .line 4431
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4432
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4434
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 4435
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 4436
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "numTxStates"    # I
    .param p3, "in"    # Landroid/os/Parcel;

    .line 4438
    invoke-direct {p0}, Landroid/os/BatteryStats$ModemActivityCounter;-><init>()V

    .line 4439
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4440
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4442
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 4443
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 4444
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 4456
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist detach()V
    .locals 1

    .line 4485
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4486
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4488
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->detach()V

    .line 4489
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->detach()V

    .line 4490
    return-void
.end method

.method public bridge synthetic blacklist getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4421
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->getIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .line 4499
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic blacklist getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
    .locals 1

    .line 4421
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->getLcModemActivityInfo()Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLcModemActivityInfo()Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;
    .locals 1

    .line 4509
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
    .locals 1

    .line 4421
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->getNrModemActivityInfo()Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNrModemActivityInfo()Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;
    .locals 1

    .line 4504
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4421
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->getSleepTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSleepTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .line 4494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4447
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4448
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4450
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 4451
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 4452
    return-void
.end method

.method public blacklist reset(Z)V
    .locals 1
    .param p1, "detachIfReset"    # Z

    .line 4477
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)Z

    .line 4478
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)Z

    .line 4480
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->reset(Z)V

    .line 4481
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->reset(Z)V

    .line 4482
    return-void
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 4460
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4461
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4463
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 4464
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 4465
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4469
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4470
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4472
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4473
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$ModemTxRxCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4474
    return-void
.end method
