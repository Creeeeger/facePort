.class public final Landroid/hardware/radio/V1_5/PersoSubstate;
.super Ljava/lang/Object;
.source "PersoSubstate.java"


# static fields
.field public static final blacklist IN_PROGRESS:I = 0x1

.field public static final blacklist READY:I = 0x2

.field public static final blacklist RUIM_CORPORATE:I = 0x10

.field public static final blacklist RUIM_CORPORATE_PUK:I = 0x16

.field public static final blacklist RUIM_HRPD:I = 0xf

.field public static final blacklist RUIM_HRPD_PUK:I = 0x15

.field public static final blacklist RUIM_NETWORK1:I = 0xd

.field public static final blacklist RUIM_NETWORK1_PUK:I = 0x13

.field public static final blacklist RUIM_NETWORK2:I = 0xe

.field public static final blacklist RUIM_NETWORK2_PUK:I = 0x14

.field public static final blacklist RUIM_RUIM:I = 0x12

.field public static final blacklist RUIM_RUIM_PUK:I = 0x18

.field public static final blacklist RUIM_SERVICE_PROVIDER:I = 0x11

.field public static final blacklist RUIM_SERVICE_PROVIDER_PUK:I = 0x17

.field public static final blacklist SIM_CORPORATE:I = 0x5

.field public static final blacklist SIM_CORPORATE_PUK:I = 0xa

.field public static final blacklist SIM_ICCID:I = 0x1d

.field public static final blacklist SIM_ICCID_PUK:I = 0x1e

.field public static final blacklist SIM_IMPI:I = 0x1f

.field public static final blacklist SIM_IMPI_PUK:I = 0x20

.field public static final blacklist SIM_NETWORK:I = 0x3

.field public static final blacklist SIM_NETWORK_PUK:I = 0x8

.field public static final blacklist SIM_NETWORK_SUBSET:I = 0x4

.field public static final blacklist SIM_NETWORK_SUBSET_PUK:I = 0x9

.field public static final blacklist SIM_NS_SP:I = 0x21

.field public static final blacklist SIM_NS_SP_PUK:I = 0x22

.field public static final blacklist SIM_SERVICE_PROVIDER:I = 0x6

.field public static final blacklist SIM_SERVICE_PROVIDER_PUK:I = 0xb

.field public static final blacklist SIM_SIM:I = 0x7

.field public static final blacklist SIM_SIM_PUK:I = 0xc

.field public static final blacklist SIM_SPN:I = 0x19

.field public static final blacklist SIM_SPN_PUK:I = 0x1a

.field public static final blacklist SIM_SP_EHPLMN:I = 0x1b

.field public static final blacklist SIM_SP_EHPLMN_PUK:I = 0x1c

.field public static final blacklist UNKNOWN:I


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

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "IN_PROGRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "READY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "SIM_NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v2, "SIM_NETWORK_SUBSET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const-string v2, "SIM_CORPORATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    const-string v2, "SIM_SERVICE_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    const-string v2, "SIM_SIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    const-string v2, "SIM_NETWORK_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    const-string v2, "SIM_NETWORK_SUBSET_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    const-string v2, "SIM_CORPORATE_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    const-string v2, "SIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xb

    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    const-string v2, "SIM_SIM_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    const-string v2, "RUIM_NETWORK1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xd

    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    const-string v2, "RUIM_NETWORK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xe

    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    const-string v2, "RUIM_HRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xf

    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    const-string v2, "RUIM_CORPORATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    const-string v2, "RUIM_SERVICE_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x11

    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    const-string v2, "RUIM_RUIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x12

    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    const-string v2, "RUIM_NETWORK1_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x13

    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    const-string v2, "RUIM_NETWORK2_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x14

    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    const-string v2, "RUIM_HRPD_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x15

    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    const-string v2, "RUIM_CORPORATE_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x16

    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    const-string v2, "RUIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x17

    :cond_16
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_17

    const-string v2, "RUIM_RUIM_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x18

    :cond_17
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_18

    const-string v2, "SIM_SPN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x19

    :cond_18
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    const-string v2, "SIM_SPN_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1a

    :cond_19
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1a

    const-string v2, "SIM_SP_EHPLMN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1b

    :cond_1a
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_1b

    const-string v2, "SIM_SP_EHPLMN_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1c

    :cond_1b
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_1c

    const-string v2, "SIM_ICCID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1d

    :cond_1c
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1d

    const-string v2, "SIM_ICCID_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1e

    :cond_1d
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1e

    const-string v2, "SIM_IMPI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1f

    :cond_1e
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1f

    const-string v2, "SIM_IMPI_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    :cond_1f
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_20

    const-string v2, "SIM_NS_SP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x21

    :cond_20
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_21

    const-string v2, "SIM_NS_SP_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x22

    :cond_21
    if-eq p0, v1, :cond_22

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

    :cond_22
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "IN_PROGRESS"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "READY"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "SIM_NETWORK"

    return-object v0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "SIM_NETWORK_SUBSET"

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "SIM_CORPORATE"

    return-object v0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "SIM_SERVICE_PROVIDER"

    return-object v0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string v0, "SIM_SIM"

    return-object v0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string v0, "SIM_NETWORK_PUK"

    return-object v0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string v0, "SIM_NETWORK_SUBSET_PUK"

    return-object v0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string v0, "SIM_CORPORATE_PUK"

    return-object v0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string v0, "SIM_SERVICE_PROVIDER_PUK"

    return-object v0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string v0, "SIM_SIM_PUK"

    return-object v0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string v0, "RUIM_NETWORK1"

    return-object v0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string v0, "RUIM_NETWORK2"

    return-object v0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string v0, "RUIM_HRPD"

    return-object v0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string v0, "RUIM_CORPORATE"

    return-object v0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string v0, "RUIM_SERVICE_PROVIDER"

    return-object v0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string v0, "RUIM_RUIM"

    return-object v0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string v0, "RUIM_NETWORK1_PUK"

    return-object v0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string v0, "RUIM_NETWORK2_PUK"

    return-object v0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string v0, "RUIM_HRPD_PUK"

    return-object v0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string v0, "RUIM_CORPORATE_PUK"

    return-object v0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string v0, "RUIM_SERVICE_PROVIDER_PUK"

    return-object v0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    const-string v0, "RUIM_RUIM_PUK"

    return-object v0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    const-string v0, "SIM_SPN"

    return-object v0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string v0, "SIM_SPN_PUK"

    return-object v0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    const-string v0, "SIM_SP_EHPLMN"

    return-object v0

    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    const-string v0, "SIM_SP_EHPLMN_PUK"

    return-object v0

    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    const-string v0, "SIM_ICCID"

    return-object v0

    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    const-string v0, "SIM_ICCID_PUK"

    return-object v0

    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    const-string v0, "SIM_IMPI"

    return-object v0

    :cond_1f
    const/16 v0, 0x20

    if-ne p0, v0, :cond_20

    const-string v0, "SIM_IMPI_PUK"

    return-object v0

    :cond_20
    const/16 v0, 0x21

    if-ne p0, v0, :cond_21

    const-string v0, "SIM_NS_SP"

    return-object v0

    :cond_21
    const/16 v0, 0x22

    if-ne p0, v0, :cond_22

    const-string v0, "SIM_NS_SP_PUK"

    return-object v0

    :cond_22
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
