.class public final Landroid/hardware/radio/V1_5/BarringInfo$ServiceType;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/BarringInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceType"
.end annotation


# static fields
.field public static final blacklist CS_FALLBACK:I = 0x5

.field public static final blacklist CS_SERVICE:I = 0x0

.field public static final blacklist CS_VOICE:I = 0x2

.field public static final blacklist EMERGENCY:I = 0x8

.field public static final blacklist MMTEL_VIDEO:I = 0x7

.field public static final blacklist MMTEL_VOICE:I = 0x6

.field public static final blacklist MO_DATA:I = 0x4

.field public static final blacklist MO_SIGNALLING:I = 0x3

.field public static final blacklist OPERATOR_1:I = 0x3e9

.field public static final blacklist OPERATOR_10:I = 0x3f2

.field public static final blacklist OPERATOR_11:I = 0x3f3

.field public static final blacklist OPERATOR_12:I = 0x3f4

.field public static final blacklist OPERATOR_13:I = 0x3f5

.field public static final blacklist OPERATOR_14:I = 0x3f6

.field public static final blacklist OPERATOR_15:I = 0x3f7

.field public static final blacklist OPERATOR_16:I = 0x3f8

.field public static final blacklist OPERATOR_17:I = 0x3f9

.field public static final blacklist OPERATOR_18:I = 0x3fa

.field public static final blacklist OPERATOR_19:I = 0x3fb

.field public static final blacklist OPERATOR_2:I = 0x3ea

.field public static final blacklist OPERATOR_20:I = 0x3fc

.field public static final blacklist OPERATOR_21:I = 0x3fd

.field public static final blacklist OPERATOR_22:I = 0x3fe

.field public static final blacklist OPERATOR_23:I = 0x3ff

.field public static final blacklist OPERATOR_24:I = 0x400

.field public static final blacklist OPERATOR_25:I = 0x401

.field public static final blacklist OPERATOR_26:I = 0x402

.field public static final blacklist OPERATOR_27:I = 0x403

.field public static final blacklist OPERATOR_28:I = 0x404

.field public static final blacklist OPERATOR_29:I = 0x405

.field public static final blacklist OPERATOR_3:I = 0x3eb

.field public static final blacklist OPERATOR_30:I = 0x406

.field public static final blacklist OPERATOR_31:I = 0x407

.field public static final blacklist OPERATOR_32:I = 0x408

.field public static final blacklist OPERATOR_4:I = 0x3ec

.field public static final blacklist OPERATOR_5:I = 0x3ed

.field public static final blacklist OPERATOR_6:I = 0x3ee

.field public static final blacklist OPERATOR_7:I = 0x3ef

.field public static final blacklist OPERATOR_8:I = 0x3f0

.field public static final blacklist OPERATOR_9:I = 0x3f1

.field public static final blacklist PS_SERVICE:I = 0x1

.field public static final blacklist SMS:I = 0x9


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

    const-string v2, "CS_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "PS_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "CS_VOICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "MO_SIGNALLING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v2, "MO_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const-string v2, "CS_FALLBACK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    const-string v2, "MMTEL_VOICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    const-string v2, "MMTEL_VIDEO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    const-string v2, "EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    const-string v2, "SMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_8
    and-int/lit16 v2, p0, 0x3e9

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_9

    const-string v2, "OPERATOR_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3e9

    :cond_9
    and-int/lit16 v2, p0, 0x3ea

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_a

    const-string v2, "OPERATOR_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3ea

    :cond_a
    and-int/lit16 v2, p0, 0x3eb

    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_b

    const-string v2, "OPERATOR_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3eb

    :cond_b
    and-int/lit16 v2, p0, 0x3ec

    const/16 v3, 0x3ec

    if-ne v2, v3, :cond_c

    const-string v2, "OPERATOR_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3ec

    :cond_c
    and-int/lit16 v2, p0, 0x3ed

    const/16 v3, 0x3ed

    if-ne v2, v3, :cond_d

    const-string v2, "OPERATOR_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3ed

    :cond_d
    and-int/lit16 v2, p0, 0x3ee

    const/16 v3, 0x3ee

    if-ne v2, v3, :cond_e

    const-string v2, "OPERATOR_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3ee

    :cond_e
    and-int/lit16 v2, p0, 0x3ef

    const/16 v3, 0x3ef

    if-ne v2, v3, :cond_f

    const-string v2, "OPERATOR_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3ef

    :cond_f
    and-int/lit16 v2, p0, 0x3f0

    const/16 v3, 0x3f0

    if-ne v2, v3, :cond_10

    const-string v2, "OPERATOR_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f0

    :cond_10
    and-int/lit16 v2, p0, 0x3f1

    const/16 v3, 0x3f1

    if-ne v2, v3, :cond_11

    const-string v2, "OPERATOR_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f1

    :cond_11
    and-int/lit16 v2, p0, 0x3f2

    const/16 v3, 0x3f2

    if-ne v2, v3, :cond_12

    const-string v2, "OPERATOR_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f2

    :cond_12
    and-int/lit16 v2, p0, 0x3f3

    const/16 v3, 0x3f3

    if-ne v2, v3, :cond_13

    const-string v2, "OPERATOR_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f3

    :cond_13
    and-int/lit16 v2, p0, 0x3f4

    const/16 v3, 0x3f4

    if-ne v2, v3, :cond_14

    const-string v2, "OPERATOR_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f4

    :cond_14
    and-int/lit16 v2, p0, 0x3f5

    const/16 v3, 0x3f5

    if-ne v2, v3, :cond_15

    const-string v2, "OPERATOR_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f5

    :cond_15
    and-int/lit16 v2, p0, 0x3f6

    const/16 v3, 0x3f6

    if-ne v2, v3, :cond_16

    const-string v2, "OPERATOR_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f6

    :cond_16
    and-int/lit16 v2, p0, 0x3f7

    const/16 v3, 0x3f7

    if-ne v2, v3, :cond_17

    const-string v2, "OPERATOR_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f7

    :cond_17
    and-int/lit16 v2, p0, 0x3f8

    const/16 v3, 0x3f8

    if-ne v2, v3, :cond_18

    const-string v2, "OPERATOR_16"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f8

    :cond_18
    and-int/lit16 v2, p0, 0x3f9

    const/16 v3, 0x3f9

    if-ne v2, v3, :cond_19

    const-string v2, "OPERATOR_17"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3f9

    :cond_19
    and-int/lit16 v2, p0, 0x3fa

    const/16 v3, 0x3fa

    if-ne v2, v3, :cond_1a

    const-string v2, "OPERATOR_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3fa

    :cond_1a
    and-int/lit16 v2, p0, 0x3fb

    const/16 v3, 0x3fb

    if-ne v2, v3, :cond_1b

    const-string v2, "OPERATOR_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3fb

    :cond_1b
    and-int/lit16 v2, p0, 0x3fc

    const/16 v3, 0x3fc

    if-ne v2, v3, :cond_1c

    const-string v2, "OPERATOR_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3fc

    :cond_1c
    and-int/lit16 v2, p0, 0x3fd

    const/16 v3, 0x3fd

    if-ne v2, v3, :cond_1d

    const-string v2, "OPERATOR_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3fd

    :cond_1d
    and-int/lit16 v2, p0, 0x3fe

    const/16 v3, 0x3fe

    if-ne v2, v3, :cond_1e

    const-string v2, "OPERATOR_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3fe

    :cond_1e
    and-int/lit16 v2, p0, 0x3ff

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_1f

    const-string v2, "OPERATOR_23"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x3ff

    :cond_1f
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_20

    const-string v2, "OPERATOR_24"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x400

    :cond_20
    and-int/lit16 v2, p0, 0x401

    const/16 v3, 0x401

    if-ne v2, v3, :cond_21

    const-string v2, "OPERATOR_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x401

    :cond_21
    and-int/lit16 v2, p0, 0x402

    const/16 v3, 0x402

    if-ne v2, v3, :cond_22

    const-string v2, "OPERATOR_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x402

    :cond_22
    and-int/lit16 v2, p0, 0x403

    const/16 v3, 0x403

    if-ne v2, v3, :cond_23

    const-string v2, "OPERATOR_27"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x403

    :cond_23
    and-int/lit16 v2, p0, 0x404

    const/16 v3, 0x404

    if-ne v2, v3, :cond_24

    const-string v2, "OPERATOR_28"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x404

    :cond_24
    and-int/lit16 v2, p0, 0x405

    const/16 v3, 0x405

    if-ne v2, v3, :cond_25

    const-string v2, "OPERATOR_29"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x405

    :cond_25
    and-int/lit16 v2, p0, 0x406

    const/16 v3, 0x406

    if-ne v2, v3, :cond_26

    const-string v2, "OPERATOR_30"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x406

    :cond_26
    and-int/lit16 v2, p0, 0x407

    const/16 v3, 0x407

    if-ne v2, v3, :cond_27

    const-string v2, "OPERATOR_31"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x407

    :cond_27
    and-int/lit16 v2, p0, 0x408

    const/16 v3, 0x408

    if-ne v2, v3, :cond_28

    const-string v2, "OPERATOR_32"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x408

    :cond_28
    if-eq p0, v1, :cond_29

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

    :cond_29
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "CS_SERVICE"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "PS_SERVICE"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "CS_VOICE"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "MO_SIGNALLING"

    return-object v0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "MO_DATA"

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "CS_FALLBACK"

    return-object v0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "MMTEL_VOICE"

    return-object v0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string v0, "MMTEL_VIDEO"

    return-object v0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string v0, "EMERGENCY"

    return-object v0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string v0, "SMS"

    return-object v0

    :cond_9
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_a

    const-string v0, "OPERATOR_1"

    return-object v0

    :cond_a
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_b

    const-string v0, "OPERATOR_2"

    return-object v0

    :cond_b
    const/16 v0, 0x3eb

    if-ne p0, v0, :cond_c

    const-string v0, "OPERATOR_3"

    return-object v0

    :cond_c
    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_d

    const-string v0, "OPERATOR_4"

    return-object v0

    :cond_d
    const/16 v0, 0x3ed

    if-ne p0, v0, :cond_e

    const-string v0, "OPERATOR_5"

    return-object v0

    :cond_e
    const/16 v0, 0x3ee

    if-ne p0, v0, :cond_f

    const-string v0, "OPERATOR_6"

    return-object v0

    :cond_f
    const/16 v0, 0x3ef

    if-ne p0, v0, :cond_10

    const-string v0, "OPERATOR_7"

    return-object v0

    :cond_10
    const/16 v0, 0x3f0

    if-ne p0, v0, :cond_11

    const-string v0, "OPERATOR_8"

    return-object v0

    :cond_11
    const/16 v0, 0x3f1

    if-ne p0, v0, :cond_12

    const-string v0, "OPERATOR_9"

    return-object v0

    :cond_12
    const/16 v0, 0x3f2

    if-ne p0, v0, :cond_13

    const-string v0, "OPERATOR_10"

    return-object v0

    :cond_13
    const/16 v0, 0x3f3

    if-ne p0, v0, :cond_14

    const-string v0, "OPERATOR_11"

    return-object v0

    :cond_14
    const/16 v0, 0x3f4

    if-ne p0, v0, :cond_15

    const-string v0, "OPERATOR_12"

    return-object v0

    :cond_15
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_16

    const-string v0, "OPERATOR_13"

    return-object v0

    :cond_16
    const/16 v0, 0x3f6

    if-ne p0, v0, :cond_17

    const-string v0, "OPERATOR_14"

    return-object v0

    :cond_17
    const/16 v0, 0x3f7

    if-ne p0, v0, :cond_18

    const-string v0, "OPERATOR_15"

    return-object v0

    :cond_18
    const/16 v0, 0x3f8

    if-ne p0, v0, :cond_19

    const-string v0, "OPERATOR_16"

    return-object v0

    :cond_19
    const/16 v0, 0x3f9

    if-ne p0, v0, :cond_1a

    const-string v0, "OPERATOR_17"

    return-object v0

    :cond_1a
    const/16 v0, 0x3fa

    if-ne p0, v0, :cond_1b

    const-string v0, "OPERATOR_18"

    return-object v0

    :cond_1b
    const/16 v0, 0x3fb

    if-ne p0, v0, :cond_1c

    const-string v0, "OPERATOR_19"

    return-object v0

    :cond_1c
    const/16 v0, 0x3fc

    if-ne p0, v0, :cond_1d

    const-string v0, "OPERATOR_20"

    return-object v0

    :cond_1d
    const/16 v0, 0x3fd

    if-ne p0, v0, :cond_1e

    const-string v0, "OPERATOR_21"

    return-object v0

    :cond_1e
    const/16 v0, 0x3fe

    if-ne p0, v0, :cond_1f

    const-string v0, "OPERATOR_22"

    return-object v0

    :cond_1f
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_20

    const-string v0, "OPERATOR_23"

    return-object v0

    :cond_20
    const/16 v0, 0x400

    if-ne p0, v0, :cond_21

    const-string v0, "OPERATOR_24"

    return-object v0

    :cond_21
    const/16 v0, 0x401

    if-ne p0, v0, :cond_22

    const-string v0, "OPERATOR_25"

    return-object v0

    :cond_22
    const/16 v0, 0x402

    if-ne p0, v0, :cond_23

    const-string v0, "OPERATOR_26"

    return-object v0

    :cond_23
    const/16 v0, 0x403

    if-ne p0, v0, :cond_24

    const-string v0, "OPERATOR_27"

    return-object v0

    :cond_24
    const/16 v0, 0x404

    if-ne p0, v0, :cond_25

    const-string v0, "OPERATOR_28"

    return-object v0

    :cond_25
    const/16 v0, 0x405

    if-ne p0, v0, :cond_26

    const-string v0, "OPERATOR_29"

    return-object v0

    :cond_26
    const/16 v0, 0x406

    if-ne p0, v0, :cond_27

    const-string v0, "OPERATOR_30"

    return-object v0

    :cond_27
    const/16 v0, 0x407

    if-ne p0, v0, :cond_28

    const-string v0, "OPERATOR_31"

    return-object v0

    :cond_28
    const/16 v0, 0x408

    if-ne p0, v0, :cond_29

    const-string v0, "OPERATOR_32"

    return-object v0

    :cond_29
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
