.class public abstract Landroid/os/BatteryConsumer$BaseBuilder;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

.field protected final blacklist mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v0, 0x0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    new-instance v0, Landroid/os/PowerComponents$Builder;

    invoke-direct {v0, p1, p3, p4}, Landroid/os/PowerComponents$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;D)V

    iput-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    return-void
.end method


# virtual methods
.method public blacklist addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDI)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/os/PowerComponents$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public blacklist addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "DI)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerComponents$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public blacklist addConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->addConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public blacklist getKey(II)Landroid/os/BatteryConsumer$Key;
    .locals 2

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .locals 1

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .locals 1

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTotalPower()D
    .locals 2

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0}, Landroid/os/PowerComponents$Builder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDI)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/os/PowerComponents$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "DI)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerComponents$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public blacklist setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public blacklist setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->setUsageDurationForCustomComponentMillis(IJ)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public blacklist setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/PowerComponents$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method

.method public blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "J)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    return-object p0
.end method
