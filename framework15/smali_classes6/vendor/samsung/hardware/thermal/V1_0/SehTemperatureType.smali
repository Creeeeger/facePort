.class public final Lvendor/samsung/hardware/thermal/V1_0/SehTemperatureType;
.super Ljava/lang/Object;
.source "SehTemperatureType.java"


# static fields
.field public static final blacklist BATTERY:I = 0x2

.field public static final blacklist BCL_CURRENT:I = 0x7

.field public static final blacklist BCL_PERCENTAGE:I = 0x8

.field public static final blacklist BCL_VOLTAGE:I = 0x6

.field public static final blacklist CPU:I = 0x0

.field public static final blacklist GPU:I = 0x1

.field public static final blacklist NPU:I = 0x9

.field public static final blacklist POWER_AMPLIFIER:I = 0x5

.field public static final blacklist SEH_AMBIENT:I = 0x36

.field public static final blacklist SEH_CHARGER:I = 0x33

.field public static final blacklist SEH_FLASH:I = 0x35

.field public static final blacklist SEH_MODEM:I = 0x32

.field public static final blacklist SEH_WIFI:I = 0x34

.field public static final blacklist SKIN:I = 0x3

.field public static final blacklist UNKNOWN:I = -0x1

.field public static final blacklist USB_PORT:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x1

    :cond_0
    const-string v2, "CPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "GPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v2, "BATTERY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const-string v2, "SKIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const-string v2, "USB_PORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    const-string v2, "POWER_AMPLIFIER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    const-string v2, "BCL_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    const-string v2, "BCL_CURRENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    const-string v2, "BCL_PERCENTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    const-string v2, "NPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_9
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_a

    const-string v2, "SEH_MODEM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x32

    :cond_a
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_b

    const-string v2, "SEH_CHARGER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x33

    :cond_b
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_c

    const-string v2, "SEH_WIFI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x34

    :cond_c
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_d

    const-string v2, "SEH_FLASH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x35

    :cond_d
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_e

    const-string v2, "SEH_AMBIENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x36

    :cond_e
    if-eq p0, v1, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "CPU"

    return-object v0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "GPU"

    return-object v0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const-string v0, "BATTERY"

    return-object v0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    const-string v0, "SKIN"

    return-object v0

    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const-string v0, "USB_PORT"

    return-object v0

    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_6

    const-string v0, "POWER_AMPLIFIER"

    return-object v0

    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const-string v0, "BCL_VOLTAGE"

    return-object v0

    :cond_7
    const/4 v0, 0x7

    if-ne p0, v0, :cond_8

    const-string v0, "BCL_CURRENT"

    return-object v0

    :cond_8
    const/16 v0, 0x8

    if-ne p0, v0, :cond_9

    const-string v0, "BCL_PERCENTAGE"

    return-object v0

    :cond_9
    const/16 v0, 0x9

    if-ne p0, v0, :cond_a

    const-string v0, "NPU"

    return-object v0

    :cond_a
    const/16 v0, 0x32

    if-ne p0, v0, :cond_b

    const-string v0, "SEH_MODEM"

    return-object v0

    :cond_b
    const/16 v0, 0x33

    if-ne p0, v0, :cond_c

    const-string v0, "SEH_CHARGER"

    return-object v0

    :cond_c
    const/16 v0, 0x34

    if-ne p0, v0, :cond_d

    const-string v0, "SEH_WIFI"

    return-object v0

    :cond_d
    const/16 v0, 0x35

    if-ne p0, v0, :cond_e

    const-string v0, "SEH_FLASH"

    return-object v0

    :cond_e
    const/16 v0, 0x36

    if-ne p0, v0, :cond_f

    const-string v0, "SEH_AMBIENT"

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
