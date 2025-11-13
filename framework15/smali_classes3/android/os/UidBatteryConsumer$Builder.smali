.class public final Landroid/os/UidBatteryConsumer$Builder;
.super Landroid/os/BatteryConsumer$BaseBuilder;
.source "UidBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidBatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "Landroid/os/UidBatteryConsumer$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist PACKAGE_NAME_UNINITIALIZED:Ljava/lang/String; = ""


# instance fields
.field private final blacklist mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

.field private blacklist mExcludeFromBatteryUsageStats:Z

.field private final blacklist mIsVirtualUid:Z

.field private blacklist mPackageWithHighestDrain:Ljava/lang/String;

.field private final blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;ID)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;D)V
    .locals 6

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;ID)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;ID)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4, p5}, Landroid/os/BatteryConsumer$BaseBuilder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    const-string v1, ""

    iput-object v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    iput p3, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    iget v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    const/16 v2, 0x442

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mIsVirtualUid:Z

    iget v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/os/UidBatteryConsumer;)Landroid/os/UidBatteryConsumer$Builder;
    .locals 6

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    iget-object v1, p1, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v0, v1}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/PowerComponents;)V

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic blacklist addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist build()Landroid/os/UidBatteryConsumer;
    .locals 4

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x2

    iget-object v3, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putString(ILjava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/os/UidBatteryConsumer;

    invoke-direct {v0, p0, v2}, Landroid/os/UidBatteryConsumer;-><init>(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/UidBatteryConsumer-IA;)V

    return-object v0
.end method

.method public blacklist excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mExcludeFromBatteryUsageStats:Z

    return-object p0
.end method

.method public blacklist getBatteryStatsUid()Landroid/os/BatteryStats$Uid;
    .locals 2

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UidBatteryConsumer.Builder was initialized without a BatteryStats.Uid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist getKey(II)Landroid/os/BatteryConsumer$Key;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getTotalPower()D
    .locals 2

    invoke-super {p0}, Landroid/os/BatteryConsumer$BaseBuilder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    return v0
.end method

.method public blacklist isExcludedFromBatteryUsageStats()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mExcludeFromBatteryUsageStats:Z

    return v0
.end method

.method public blacklist isVirtualUid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mIsVirtualUid:Z

    return v0
.end method

.method public bridge synthetic blacklist setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported process state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    nop

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    nop

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic blacklist setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method
