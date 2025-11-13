.class public final Landroid/hardware/radio/V1_5/EutranBands;
.super Ljava/lang/Object;
.source "EutranBands.java"


# static fields
.field public static final blacklist BAND_1:I = 0x1

.field public static final blacklist BAND_10:I = 0xa

.field public static final blacklist BAND_11:I = 0xb

.field public static final blacklist BAND_12:I = 0xc

.field public static final blacklist BAND_13:I = 0xd

.field public static final blacklist BAND_14:I = 0xe

.field public static final blacklist BAND_17:I = 0x11

.field public static final blacklist BAND_18:I = 0x12

.field public static final blacklist BAND_19:I = 0x13

.field public static final blacklist BAND_2:I = 0x2

.field public static final blacklist BAND_20:I = 0x14

.field public static final blacklist BAND_21:I = 0x15

.field public static final blacklist BAND_22:I = 0x16

.field public static final blacklist BAND_23:I = 0x17

.field public static final blacklist BAND_24:I = 0x18

.field public static final blacklist BAND_25:I = 0x19

.field public static final blacklist BAND_26:I = 0x1a

.field public static final blacklist BAND_27:I = 0x1b

.field public static final blacklist BAND_28:I = 0x1c

.field public static final blacklist BAND_3:I = 0x3

.field public static final blacklist BAND_30:I = 0x1e

.field public static final blacklist BAND_31:I = 0x1f

.field public static final blacklist BAND_33:I = 0x21

.field public static final blacklist BAND_34:I = 0x22

.field public static final blacklist BAND_35:I = 0x23

.field public static final blacklist BAND_36:I = 0x24

.field public static final blacklist BAND_37:I = 0x25

.field public static final blacklist BAND_38:I = 0x26

.field public static final blacklist BAND_39:I = 0x27

.field public static final blacklist BAND_4:I = 0x4

.field public static final blacklist BAND_40:I = 0x28

.field public static final blacklist BAND_41:I = 0x29

.field public static final blacklist BAND_42:I = 0x2a

.field public static final blacklist BAND_43:I = 0x2b

.field public static final blacklist BAND_44:I = 0x2c

.field public static final blacklist BAND_45:I = 0x2d

.field public static final blacklist BAND_46:I = 0x2e

.field public static final blacklist BAND_47:I = 0x2f

.field public static final blacklist BAND_48:I = 0x30

.field public static final blacklist BAND_49:I = 0x31

.field public static final blacklist BAND_5:I = 0x5

.field public static final blacklist BAND_50:I = 0x32

.field public static final blacklist BAND_51:I = 0x33

.field public static final blacklist BAND_52:I = 0x34

.field public static final blacklist BAND_53:I = 0x35

.field public static final blacklist BAND_6:I = 0x6

.field public static final blacklist BAND_65:I = 0x41

.field public static final blacklist BAND_66:I = 0x42

.field public static final blacklist BAND_68:I = 0x44

.field public static final blacklist BAND_7:I = 0x7

.field public static final blacklist BAND_70:I = 0x46

.field public static final blacklist BAND_71:I = 0x47

.field public static final blacklist BAND_72:I = 0x48

.field public static final blacklist BAND_73:I = 0x49

.field public static final blacklist BAND_74:I = 0x4a

.field public static final blacklist BAND_8:I = 0x8

.field public static final blacklist BAND_85:I = 0x55

.field public static final blacklist BAND_87:I = 0x57

.field public static final blacklist BAND_88:I = 0x58

.field public static final blacklist BAND_9:I = 0x9


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
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v2, "BAND_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const-string v2, "BAND_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    const-string v2, "BAND_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    const-string v2, "BAND_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    const-string v2, "BAND_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    const-string v2, "BAND_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    const-string v2, "BAND_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    const-string v2, "BAND_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xb

    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    const-string v2, "BAND_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    const-string v2, "BAND_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xd

    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    const-string v2, "BAND_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xe

    :cond_d
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e

    const-string v2, "BAND_17"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x11

    :cond_e
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_f

    const-string v2, "BAND_18"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x12

    :cond_f
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_10

    const-string v2, "BAND_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x13

    :cond_10
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_11

    const-string v2, "BAND_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x14

    :cond_11
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_12

    const-string v2, "BAND_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x15

    :cond_12
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_13

    const-string v2, "BAND_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x16

    :cond_13
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_14

    const-string v2, "BAND_23"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x17

    :cond_14
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_15

    const-string v2, "BAND_24"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x18

    :cond_15
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_16

    const-string v2, "BAND_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x19

    :cond_16
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_17

    const-string v2, "BAND_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1a

    :cond_17
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_18

    const-string v2, "BAND_27"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1b

    :cond_18
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_19

    const-string v2, "BAND_28"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1c

    :cond_19
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1a

    const-string v2, "BAND_30"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1e

    :cond_1a
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1b

    const-string v2, "BAND_31"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1f

    :cond_1b
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_1c

    const-string v2, "BAND_33"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x21

    :cond_1c
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1d

    const-string v2, "BAND_34"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x22

    :cond_1d
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1e

    const-string v2, "BAND_35"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x23

    :cond_1e
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1f

    const-string v2, "BAND_36"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x24

    :cond_1f
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_20

    const-string v2, "BAND_37"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x25

    :cond_20
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_21

    const-string v2, "BAND_38"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x26

    :cond_21
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_22

    const-string v2, "BAND_39"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x27

    :cond_22
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_23

    const-string v2, "BAND_40"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x28

    :cond_23
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_24

    const-string v2, "BAND_41"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x29

    :cond_24
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_25

    const-string v2, "BAND_42"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2a

    :cond_25
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_26

    const-string v2, "BAND_43"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2b

    :cond_26
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_27

    const-string v2, "BAND_44"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2c

    :cond_27
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_28

    const-string v2, "BAND_45"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2d

    :cond_28
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_29

    const-string v2, "BAND_46"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2e

    :cond_29
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2a

    const-string v2, "BAND_47"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2f

    :cond_2a
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2b

    const-string v2, "BAND_48"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x30

    :cond_2b
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_2c

    const-string v2, "BAND_65"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x41

    :cond_2c
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_2d

    const-string v2, "BAND_66"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x42

    :cond_2d
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_2e

    const-string v2, "BAND_68"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x44

    :cond_2e
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_2f

    const-string v2, "BAND_70"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x46

    :cond_2f
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_30

    const-string v2, "BAND_49"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x31

    :cond_30
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_31

    const-string v2, "BAND_50"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x32

    :cond_31
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_32

    const-string v2, "BAND_51"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x33

    :cond_32
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_33

    const-string v2, "BAND_52"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x34

    :cond_33
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_34

    const-string v2, "BAND_53"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x35

    :cond_34
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_35

    const-string v2, "BAND_71"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x47

    :cond_35
    and-int/lit8 v2, p0, 0x48

    const/16 v3, 0x48

    if-ne v2, v3, :cond_36

    const-string v2, "BAND_72"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x48

    :cond_36
    and-int/lit8 v2, p0, 0x49

    const/16 v3, 0x49

    if-ne v2, v3, :cond_37

    const-string v2, "BAND_73"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x49

    :cond_37
    and-int/lit8 v2, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_38

    const-string v2, "BAND_74"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4a

    :cond_38
    and-int/lit8 v2, p0, 0x55

    const/16 v3, 0x55

    if-ne v2, v3, :cond_39

    const-string v2, "BAND_85"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x55

    :cond_39
    and-int/lit8 v2, p0, 0x57

    const/16 v3, 0x57

    if-ne v2, v3, :cond_3a

    const-string v2, "BAND_87"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x57

    :cond_3a
    and-int/lit8 v2, p0, 0x58

    const/16 v3, 0x58

    if-ne v2, v3, :cond_3b

    const-string v2, "BAND_88"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x58

    :cond_3b
    if-eq p0, v1, :cond_3c

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

    :cond_3c
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
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string v0, "BAND_4"

    return-object v0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string v0, "BAND_5"

    return-object v0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string v0, "BAND_6"

    return-object v0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string v0, "BAND_7"

    return-object v0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string v0, "BAND_8"

    return-object v0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string v0, "BAND_9"

    return-object v0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string v0, "BAND_10"

    return-object v0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string v0, "BAND_11"

    return-object v0

    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const-string v0, "BAND_12"

    return-object v0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_13"

    return-object v0

    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const-string v0, "BAND_14"

    return-object v0

    :cond_d
    const/16 v0, 0x11

    if-ne p0, v0, :cond_e

    const-string v0, "BAND_17"

    return-object v0

    :cond_e
    const/16 v0, 0x12

    if-ne p0, v0, :cond_f

    const-string v0, "BAND_18"

    return-object v0

    :cond_f
    const/16 v0, 0x13

    if-ne p0, v0, :cond_10

    const-string v0, "BAND_19"

    return-object v0

    :cond_10
    const/16 v0, 0x14

    if-ne p0, v0, :cond_11

    const-string v0, "BAND_20"

    return-object v0

    :cond_11
    const/16 v0, 0x15

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_21"

    return-object v0

    :cond_12
    const/16 v0, 0x16

    if-ne p0, v0, :cond_13

    const-string v0, "BAND_22"

    return-object v0

    :cond_13
    const/16 v0, 0x17

    if-ne p0, v0, :cond_14

    const-string v0, "BAND_23"

    return-object v0

    :cond_14
    const/16 v0, 0x18

    if-ne p0, v0, :cond_15

    const-string v0, "BAND_24"

    return-object v0

    :cond_15
    const/16 v0, 0x19

    if-ne p0, v0, :cond_16

    const-string v0, "BAND_25"

    return-object v0

    :cond_16
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_17

    const-string v0, "BAND_26"

    return-object v0

    :cond_17
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_27"

    return-object v0

    :cond_18
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_19

    const-string v0, "BAND_28"

    return-object v0

    :cond_19
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1a

    const-string v0, "BAND_30"

    return-object v0

    :cond_1a
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1b

    const-string v0, "BAND_31"

    return-object v0

    :cond_1b
    const/16 v0, 0x21

    if-ne p0, v0, :cond_1c

    const-string v0, "BAND_33"

    return-object v0

    :cond_1c
    const/16 v0, 0x22

    if-ne p0, v0, :cond_1d

    const-string v0, "BAND_34"

    return-object v0

    :cond_1d
    const/16 v0, 0x23

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_35"

    return-object v0

    :cond_1e
    const/16 v0, 0x24

    if-ne p0, v0, :cond_1f

    const-string v0, "BAND_36"

    return-object v0

    :cond_1f
    const/16 v0, 0x25

    if-ne p0, v0, :cond_20

    const-string v0, "BAND_37"

    return-object v0

    :cond_20
    const/16 v0, 0x26

    if-ne p0, v0, :cond_21

    const-string v0, "BAND_38"

    return-object v0

    :cond_21
    const/16 v0, 0x27

    if-ne p0, v0, :cond_22

    const-string v0, "BAND_39"

    return-object v0

    :cond_22
    const/16 v0, 0x28

    if-ne p0, v0, :cond_23

    const-string v0, "BAND_40"

    return-object v0

    :cond_23
    const/16 v0, 0x29

    if-ne p0, v0, :cond_24

    const-string v0, "BAND_41"

    return-object v0

    :cond_24
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_25

    const-string v0, "BAND_42"

    return-object v0

    :cond_25
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_26

    const-string v0, "BAND_43"

    return-object v0

    :cond_26
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_27

    const-string v0, "BAND_44"

    return-object v0

    :cond_27
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_28

    const-string v0, "BAND_45"

    return-object v0

    :cond_28
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_29

    const-string v0, "BAND_46"

    return-object v0

    :cond_29
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_2a

    const-string v0, "BAND_47"

    return-object v0

    :cond_2a
    const/16 v0, 0x30

    if-ne p0, v0, :cond_2b

    const-string v0, "BAND_48"

    return-object v0

    :cond_2b
    const/16 v0, 0x41

    if-ne p0, v0, :cond_2c

    const-string v0, "BAND_65"

    return-object v0

    :cond_2c
    const/16 v0, 0x42

    if-ne p0, v0, :cond_2d

    const-string v0, "BAND_66"

    return-object v0

    :cond_2d
    const/16 v0, 0x44

    if-ne p0, v0, :cond_2e

    const-string v0, "BAND_68"

    return-object v0

    :cond_2e
    const/16 v0, 0x46

    if-ne p0, v0, :cond_2f

    const-string v0, "BAND_70"

    return-object v0

    :cond_2f
    const/16 v0, 0x31

    if-ne p0, v0, :cond_30

    const-string v0, "BAND_49"

    return-object v0

    :cond_30
    const/16 v0, 0x32

    if-ne p0, v0, :cond_31

    const-string v0, "BAND_50"

    return-object v0

    :cond_31
    const/16 v0, 0x33

    if-ne p0, v0, :cond_32

    const-string v0, "BAND_51"

    return-object v0

    :cond_32
    const/16 v0, 0x34

    if-ne p0, v0, :cond_33

    const-string v0, "BAND_52"

    return-object v0

    :cond_33
    const/16 v0, 0x35

    if-ne p0, v0, :cond_34

    const-string v0, "BAND_53"

    return-object v0

    :cond_34
    const/16 v0, 0x47

    if-ne p0, v0, :cond_35

    const-string v0, "BAND_71"

    return-object v0

    :cond_35
    const/16 v0, 0x48

    if-ne p0, v0, :cond_36

    const-string v0, "BAND_72"

    return-object v0

    :cond_36
    const/16 v0, 0x49

    if-ne p0, v0, :cond_37

    const-string v0, "BAND_73"

    return-object v0

    :cond_37
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_38

    const-string v0, "BAND_74"

    return-object v0

    :cond_38
    const/16 v0, 0x55

    if-ne p0, v0, :cond_39

    const-string v0, "BAND_85"

    return-object v0

    :cond_39
    const/16 v0, 0x57

    if-ne p0, v0, :cond_3a

    const-string v0, "BAND_87"

    return-object v0

    :cond_3a
    const/16 v0, 0x58

    if-ne p0, v0, :cond_3b

    const-string v0, "BAND_88"

    return-object v0

    :cond_3b
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
