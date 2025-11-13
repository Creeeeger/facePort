.class public final Landroid/hardware/radio/V1_5/NgranBands;
.super Ljava/lang/Object;
.source "NgranBands.java"


# static fields
.field public static final blacklist BAND_1:I = 0x1

.field public static final blacklist BAND_12:I = 0xc

.field public static final blacklist BAND_14:I = 0xe

.field public static final blacklist BAND_18:I = 0x12

.field public static final blacklist BAND_2:I = 0x2

.field public static final blacklist BAND_20:I = 0x14

.field public static final blacklist BAND_25:I = 0x19

.field public static final blacklist BAND_257:I = 0x101

.field public static final blacklist BAND_258:I = 0x102

.field public static final blacklist BAND_260:I = 0x104

.field public static final blacklist BAND_261:I = 0x105

.field public static final blacklist BAND_28:I = 0x1c

.field public static final blacklist BAND_29:I = 0x1d

.field public static final blacklist BAND_3:I = 0x3

.field public static final blacklist BAND_30:I = 0x1e

.field public static final blacklist BAND_34:I = 0x22

.field public static final blacklist BAND_38:I = 0x26

.field public static final blacklist BAND_39:I = 0x27

.field public static final blacklist BAND_40:I = 0x28

.field public static final blacklist BAND_41:I = 0x29

.field public static final blacklist BAND_48:I = 0x30

.field public static final blacklist BAND_5:I = 0x5

.field public static final blacklist BAND_50:I = 0x32

.field public static final blacklist BAND_51:I = 0x33

.field public static final blacklist BAND_65:I = 0x41

.field public static final blacklist BAND_66:I = 0x42

.field public static final blacklist BAND_7:I = 0x7

.field public static final blacklist BAND_70:I = 0x46

.field public static final blacklist BAND_71:I = 0x47

.field public static final blacklist BAND_74:I = 0x4a

.field public static final blacklist BAND_75:I = 0x4b

.field public static final blacklist BAND_76:I = 0x4c

.field public static final blacklist BAND_77:I = 0x4d

.field public static final blacklist BAND_78:I = 0x4e

.field public static final blacklist BAND_79:I = 0x4f

.field public static final blacklist BAND_8:I = 0x8

.field public static final blacklist BAND_80:I = 0x50

.field public static final blacklist BAND_81:I = 0x51

.field public static final blacklist BAND_82:I = 0x52

.field public static final blacklist BAND_83:I = 0x53

.field public static final blacklist BAND_84:I = 0x54

.field public static final blacklist BAND_86:I = 0x56

.field public static final blacklist BAND_89:I = 0x59

.field public static final blacklist BAND_90:I = 0x5a

.field public static final blacklist BAND_91:I = 0x5b

.field public static final blacklist BAND_92:I = 0x5c

.field public static final blacklist BAND_93:I = 0x5d

.field public static final blacklist BAND_94:I = 0x5e

.field public static final blacklist BAND_95:I = 0x5f


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

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "BAND_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "BAND_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "BAND_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_2
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    const-string v2, "BAND_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_3
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    const-string v2, "BAND_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    const-string v2, "BAND_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_5
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_6

    const-string v2, "BAND_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    :cond_6
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_7

    const-string v2, "BAND_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xe

    :cond_7
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_8

    const-string v2, "BAND_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x12

    :cond_8
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_9

    const-string v2, "BAND_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x14

    :cond_9
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_a

    const-string v2, "BAND_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x19

    :cond_a
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_b

    const-string v2, "BAND_28"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1c

    :cond_b
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_c

    const-string v2, "BAND_29"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1d

    :cond_c
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_d

    const-string v2, "BAND_30"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1e

    :cond_d
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_e

    const-string v2, "BAND_34"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x22

    :cond_e
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_f

    const-string v2, "BAND_38"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x26

    :cond_f
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_10

    const-string v2, "BAND_39"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x27

    :cond_10
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_11

    const-string v2, "BAND_40"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x28

    :cond_11
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_12

    const-string v2, "BAND_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x29

    :cond_12
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_13

    const-string v2, "BAND_48"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x30

    :cond_13
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_14

    const-string v2, "BAND_50"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x32

    :cond_14
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_15

    const-string v2, "BAND_51"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x33

    :cond_15
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_16

    const-string v2, "BAND_65"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x41

    :cond_16
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_17

    const-string v2, "BAND_66"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x42

    :cond_17
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_18

    const-string v2, "BAND_70"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x46

    :cond_18
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_19

    const-string v2, "BAND_71"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x47

    :cond_19
    and-int/lit8 v2, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_1a

    const-string v2, "BAND_74"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4a

    :cond_1a
    and-int/lit8 v2, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_1b

    const-string v2, "BAND_75"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4b

    :cond_1b
    and-int/lit8 v2, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1c

    const-string v2, "BAND_76"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4c

    :cond_1c
    and-int/lit8 v2, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1d

    const-string v2, "BAND_77"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4d

    :cond_1d
    and-int/lit8 v2, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_1e

    const-string v2, "BAND_78"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4e

    :cond_1e
    and-int/lit8 v2, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1f

    const-string v2, "BAND_79"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4f

    :cond_1f
    and-int/lit8 v2, p0, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_20

    const-string v2, "BAND_80"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x50

    :cond_20
    and-int/lit8 v2, p0, 0x51

    const/16 v3, 0x51

    if-ne v2, v3, :cond_21

    const-string v2, "BAND_81"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x51

    :cond_21
    and-int/lit8 v2, p0, 0x52

    const/16 v3, 0x52

    if-ne v2, v3, :cond_22

    const-string v2, "BAND_82"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x52

    :cond_22
    and-int/lit8 v2, p0, 0x53

    const/16 v3, 0x53

    if-ne v2, v3, :cond_23

    const-string v2, "BAND_83"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x53

    :cond_23
    and-int/lit8 v2, p0, 0x54

    const/16 v3, 0x54

    if-ne v2, v3, :cond_24

    const-string v2, "BAND_84"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x54

    :cond_24
    and-int/lit8 v2, p0, 0x56

    const/16 v3, 0x56

    if-ne v2, v3, :cond_25

    const-string v2, "BAND_86"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x56

    :cond_25
    and-int/lit8 v2, p0, 0x59

    const/16 v3, 0x59

    if-ne v2, v3, :cond_26

    const-string v2, "BAND_89"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x59

    :cond_26
    and-int/lit8 v2, p0, 0x5a

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_27

    const-string v2, "BAND_90"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5a

    :cond_27
    and-int/lit8 v2, p0, 0x5b

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_28

    const-string v2, "BAND_91"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5b

    :cond_28
    and-int/lit8 v2, p0, 0x5c

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_29

    const-string v2, "BAND_92"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5c

    :cond_29
    and-int/lit8 v2, p0, 0x5d

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_2a

    const-string v2, "BAND_93"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5d

    :cond_2a
    and-int/lit8 v2, p0, 0x5e

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2b

    const-string v2, "BAND_94"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5e

    :cond_2b
    and-int/lit8 v2, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_2c

    const-string v2, "BAND_95"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5f

    :cond_2c
    and-int/lit16 v2, p0, 0x101

    const/16 v3, 0x101

    if-ne v2, v3, :cond_2d

    const-string v2, "BAND_257"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x101

    :cond_2d
    and-int/lit16 v2, p0, 0x102

    const/16 v3, 0x102

    if-ne v2, v3, :cond_2e

    const-string v2, "BAND_258"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x102

    :cond_2e
    and-int/lit16 v2, p0, 0x104

    const/16 v3, 0x104

    if-ne v2, v3, :cond_2f

    const-string v2, "BAND_260"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x104

    :cond_2f
    and-int/lit16 v2, p0, 0x105

    const/16 v3, 0x105

    if-ne v2, v3, :cond_30

    const-string v2, "BAND_261"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x105

    :cond_30
    if-eq p0, v1, :cond_31

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

    :cond_31
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "BAND_1"

    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "BAND_2"

    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "BAND_3"

    return-object v0

    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    const-string v0, "BAND_5"

    return-object v0

    :cond_3
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4

    const-string v0, "BAND_7"

    return-object v0

    :cond_4
    const/16 v0, 0x8

    if-ne p0, v0, :cond_5

    const-string v0, "BAND_8"

    return-object v0

    :cond_5
    const/16 v0, 0xc

    if-ne p0, v0, :cond_6

    const-string v0, "BAND_12"

    return-object v0

    :cond_6
    const/16 v0, 0xe

    if-ne p0, v0, :cond_7

    const-string v0, "BAND_14"

    return-object v0

    :cond_7
    const/16 v0, 0x12

    if-ne p0, v0, :cond_8

    const-string v0, "BAND_18"

    return-object v0

    :cond_8
    const/16 v0, 0x14

    if-ne p0, v0, :cond_9

    const-string v0, "BAND_20"

    return-object v0

    :cond_9
    const/16 v0, 0x19

    if-ne p0, v0, :cond_a

    const-string v0, "BAND_25"

    return-object v0

    :cond_a
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_b

    const-string v0, "BAND_28"

    return-object v0

    :cond_b
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_29"

    return-object v0

    :cond_c
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_d

    const-string v0, "BAND_30"

    return-object v0

    :cond_d
    const/16 v0, 0x22

    if-ne p0, v0, :cond_e

    const-string v0, "BAND_34"

    return-object v0

    :cond_e
    const/16 v0, 0x26

    if-ne p0, v0, :cond_f

    const-string v0, "BAND_38"

    return-object v0

    :cond_f
    const/16 v0, 0x27

    if-ne p0, v0, :cond_10

    const-string v0, "BAND_39"

    return-object v0

    :cond_10
    const/16 v0, 0x28

    if-ne p0, v0, :cond_11

    const-string v0, "BAND_40"

    return-object v0

    :cond_11
    const/16 v0, 0x29

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_41"

    return-object v0

    :cond_12
    const/16 v0, 0x30

    if-ne p0, v0, :cond_13

    const-string v0, "BAND_48"

    return-object v0

    :cond_13
    const/16 v0, 0x32

    if-ne p0, v0, :cond_14

    const-string v0, "BAND_50"

    return-object v0

    :cond_14
    const/16 v0, 0x33

    if-ne p0, v0, :cond_15

    const-string v0, "BAND_51"

    return-object v0

    :cond_15
    const/16 v0, 0x41

    if-ne p0, v0, :cond_16

    const-string v0, "BAND_65"

    return-object v0

    :cond_16
    const/16 v0, 0x42

    if-ne p0, v0, :cond_17

    const-string v0, "BAND_66"

    return-object v0

    :cond_17
    const/16 v0, 0x46

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_70"

    return-object v0

    :cond_18
    const/16 v0, 0x47

    if-ne p0, v0, :cond_19

    const-string v0, "BAND_71"

    return-object v0

    :cond_19
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_1a

    const-string v0, "BAND_74"

    return-object v0

    :cond_1a
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_1b

    const-string v0, "BAND_75"

    return-object v0

    :cond_1b
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_1c

    const-string v0, "BAND_76"

    return-object v0

    :cond_1c
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_1d

    const-string v0, "BAND_77"

    return-object v0

    :cond_1d
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_78"

    return-object v0

    :cond_1e
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_1f

    const-string v0, "BAND_79"

    return-object v0

    :cond_1f
    const/16 v0, 0x50

    if-ne p0, v0, :cond_20

    const-string v0, "BAND_80"

    return-object v0

    :cond_20
    const/16 v0, 0x51

    if-ne p0, v0, :cond_21

    const-string v0, "BAND_81"

    return-object v0

    :cond_21
    const/16 v0, 0x52

    if-ne p0, v0, :cond_22

    const-string v0, "BAND_82"

    return-object v0

    :cond_22
    const/16 v0, 0x53

    if-ne p0, v0, :cond_23

    const-string v0, "BAND_83"

    return-object v0

    :cond_23
    const/16 v0, 0x54

    if-ne p0, v0, :cond_24

    const-string v0, "BAND_84"

    return-object v0

    :cond_24
    const/16 v0, 0x56

    if-ne p0, v0, :cond_25

    const-string v0, "BAND_86"

    return-object v0

    :cond_25
    const/16 v0, 0x59

    if-ne p0, v0, :cond_26

    const-string v0, "BAND_89"

    return-object v0

    :cond_26
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_27

    const-string v0, "BAND_90"

    return-object v0

    :cond_27
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_28

    const-string v0, "BAND_91"

    return-object v0

    :cond_28
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_29

    const-string v0, "BAND_92"

    return-object v0

    :cond_29
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_2a

    const-string v0, "BAND_93"

    return-object v0

    :cond_2a
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_2b

    const-string v0, "BAND_94"

    return-object v0

    :cond_2b
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2c

    const-string v0, "BAND_95"

    return-object v0

    :cond_2c
    const/16 v0, 0x101

    if-ne p0, v0, :cond_2d

    const-string v0, "BAND_257"

    return-object v0

    :cond_2d
    const/16 v0, 0x102

    if-ne p0, v0, :cond_2e

    const-string v0, "BAND_258"

    return-object v0

    :cond_2e
    const/16 v0, 0x104

    if-ne p0, v0, :cond_2f

    const-string v0, "BAND_260"

    return-object v0

    :cond_2f
    const/16 v0, 0x105

    if-ne p0, v0, :cond_30

    const-string v0, "BAND_261"

    return-object v0

    :cond_30
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
