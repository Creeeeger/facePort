.class public Landroid/hardware/devicestate/DeviceStateUtil;
.super Ljava/lang/Object;
.source "DeviceStateUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateBaseStateIdentifier(Landroid/hardware/devicestate/DeviceState;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/devicestate/DeviceState;",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/devicestate/DeviceState;

    invoke-static {v3, v4}, Landroid/hardware/devicestate/DeviceStateUtil;->isDeviceStateMatchingPhysicalProperties(Ljava/util/Set;Landroid/hardware/devicestate/DeviceState;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    return v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist isDeviceStateMatchingPhysicalProperties(Ljava/util/Set;Landroid/hardware/devicestate/DeviceState;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/devicestate/DeviceState;",
            ")Z"
        }
    .end annotation

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
