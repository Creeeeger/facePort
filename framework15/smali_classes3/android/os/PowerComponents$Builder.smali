.class final Landroid/os/PowerComponents$Builder;
.super Ljava/lang/Object;
.source "PowerComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist POWER_MODEL_UNINITIALIZED:B = -0x1t


# instance fields
.field private final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

.field private final blacklist mMinConsumedPowerThreshold:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .locals 0

    iget-object p0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;D)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iput-wide p2, p0, Landroid/os/PowerComponents$Builder;->mMinConsumedPowerThreshold:D

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v4, v6, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .locals 12

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    iget-object v1, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    iget-object v5, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v6, v4, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v7, v4, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v8, v4, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v9, v4, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v7, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v8

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {p1, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    iget-object v6, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v7, v4, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v4, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v8

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {p1, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    iget v6, v4, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    iget v8, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    if-ne v8, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v4, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v8

    iget v9, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {p1, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v9

    if-ne v8, v7, :cond_3

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v4, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v7, v10, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    goto :goto_1

    :cond_3
    if-eq v8, v9, :cond_4

    if-eq v9, v7, :cond_4

    const/4 v6, 0x1

    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v4, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v7, v8, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_7

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v1, v0

    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v4, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v3, v0

    iget-object v4, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v4, v0

    iget-object v5, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v6, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-virtual {v6, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of custom power components does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;
    .locals 4

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v3, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v2

    add-double/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    iget v0, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v0, v1, p4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_0
    return-object p0
.end method

.method public blacklist addConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;
    .locals 5

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist addPowerAndDuration(Landroid/os/PowerComponents$Builder;)V
    .locals 1

    iget-object v0, p1, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    return-void
.end method

.method public blacklist addPowerAndDuration(Landroid/os/PowerComponents;)V
    .locals 1

    invoke-static {p1}, Landroid/os/PowerComponents;->-$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    return-void
.end method

.method public blacklist build()Landroid/os/PowerComponents;
    .locals 11

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, 0x0

    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    iget v7, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v7, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v7

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v7, v8, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_0
    iget-wide v7, p0, Landroid/os/PowerComponents$Builder;->mMinConsumedPowerThreshold:D

    cmpl-double v7, v7, v4

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v6, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v7, v8}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v7

    iget-wide v9, p0, Landroid/os/PowerComponents$Builder;->mMinConsumedPowerThreshold:D

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v6, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v7, v8, v4, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {p0}, Landroid/os/PowerComponents$Builder;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    :cond_3
    new-instance v0, Landroid/os/PowerComponents;

    invoke-direct {v0, p0}, Landroid/os/PowerComponents;-><init>(Landroid/os/PowerComponents$Builder;)V

    return-object v0
.end method

.method public blacklist getTotalPower()D
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v5, v5}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKeyOrThrow(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;
    .locals 2

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    iget v0, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v0, v1, p4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    :cond_0
    return-object p0
.end method

.method public blacklist setConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;
    .locals 4

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setUsageDurationForCustomComponentMillis(IJ)Landroid/os/PowerComponents$Builder;
    .locals 4

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;
    .locals 2

    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    return-object p0
.end method
