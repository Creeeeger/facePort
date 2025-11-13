.class public interface abstract Landroid/hardware/radio/network/NgranBands$$;
.super Ljava/lang/Object;
.source "NgranBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/NgranBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/network/NgranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const-class v3, [I

    if-ne v0, v3, :cond_4

    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    invoke-static {v6}, Landroid/hardware/radio/network/NgranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .locals 1

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
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b

    const-string v0, "BAND_26"

    return-object v0

    :cond_b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_28"

    return-object v0

    :cond_c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_d

    const-string v0, "BAND_29"

    return-object v0

    :cond_d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_e

    const-string v0, "BAND_30"

    return-object v0

    :cond_e
    const/16 v0, 0x22

    if-ne p0, v0, :cond_f

    const-string v0, "BAND_34"

    return-object v0

    :cond_f
    const/16 v0, 0x26

    if-ne p0, v0, :cond_10

    const-string v0, "BAND_38"

    return-object v0

    :cond_10
    const/16 v0, 0x27

    if-ne p0, v0, :cond_11

    const-string v0, "BAND_39"

    return-object v0

    :cond_11
    const/16 v0, 0x28

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_40"

    return-object v0

    :cond_12
    const/16 v0, 0x29

    if-ne p0, v0, :cond_13

    const-string v0, "BAND_41"

    return-object v0

    :cond_13
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_14

    const-string v0, "BAND_46"

    return-object v0

    :cond_14
    const/16 v0, 0x30

    if-ne p0, v0, :cond_15

    const-string v0, "BAND_48"

    return-object v0

    :cond_15
    const/16 v0, 0x32

    if-ne p0, v0, :cond_16

    const-string v0, "BAND_50"

    return-object v0

    :cond_16
    const/16 v0, 0x33

    if-ne p0, v0, :cond_17

    const-string v0, "BAND_51"

    return-object v0

    :cond_17
    const/16 v0, 0x35

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_53"

    return-object v0

    :cond_18
    const/16 v0, 0x41

    if-ne p0, v0, :cond_19

    const-string v0, "BAND_65"

    return-object v0

    :cond_19
    const/16 v0, 0x42

    if-ne p0, v0, :cond_1a

    const-string v0, "BAND_66"

    return-object v0

    :cond_1a
    const/16 v0, 0x46

    if-ne p0, v0, :cond_1b

    const-string v0, "BAND_70"

    return-object v0

    :cond_1b
    const/16 v0, 0x47

    if-ne p0, v0, :cond_1c

    const-string v0, "BAND_71"

    return-object v0

    :cond_1c
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_1d

    const-string v0, "BAND_74"

    return-object v0

    :cond_1d
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_75"

    return-object v0

    :cond_1e
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_1f

    const-string v0, "BAND_76"

    return-object v0

    :cond_1f
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_20

    const-string v0, "BAND_77"

    return-object v0

    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_21

    const-string v0, "BAND_78"

    return-object v0

    :cond_21
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_22

    const-string v0, "BAND_79"

    return-object v0

    :cond_22
    const/16 v0, 0x50

    if-ne p0, v0, :cond_23

    const-string v0, "BAND_80"

    return-object v0

    :cond_23
    const/16 v0, 0x51

    if-ne p0, v0, :cond_24

    const-string v0, "BAND_81"

    return-object v0

    :cond_24
    const/16 v0, 0x52

    if-ne p0, v0, :cond_25

    const-string v0, "BAND_82"

    return-object v0

    :cond_25
    const/16 v0, 0x53

    if-ne p0, v0, :cond_26

    const-string v0, "BAND_83"

    return-object v0

    :cond_26
    const/16 v0, 0x54

    if-ne p0, v0, :cond_27

    const-string v0, "BAND_84"

    return-object v0

    :cond_27
    const/16 v0, 0x56

    if-ne p0, v0, :cond_28

    const-string v0, "BAND_86"

    return-object v0

    :cond_28
    const/16 v0, 0x59

    if-ne p0, v0, :cond_29

    const-string v0, "BAND_89"

    return-object v0

    :cond_29
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_2a

    const-string v0, "BAND_90"

    return-object v0

    :cond_2a
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_2b

    const-string v0, "BAND_91"

    return-object v0

    :cond_2b
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_2c

    const-string v0, "BAND_92"

    return-object v0

    :cond_2c
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_2d

    const-string v0, "BAND_93"

    return-object v0

    :cond_2d
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_2e

    const-string v0, "BAND_94"

    return-object v0

    :cond_2e
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2f

    const-string v0, "BAND_95"

    return-object v0

    :cond_2f
    const/16 v0, 0x60

    if-ne p0, v0, :cond_30

    const-string v0, "BAND_96"

    return-object v0

    :cond_30
    const/16 v0, 0x101

    if-ne p0, v0, :cond_31

    const-string v0, "BAND_257"

    return-object v0

    :cond_31
    const/16 v0, 0x102

    if-ne p0, v0, :cond_32

    const-string v0, "BAND_258"

    return-object v0

    :cond_32
    const/16 v0, 0x104

    if-ne p0, v0, :cond_33

    const-string v0, "BAND_260"

    return-object v0

    :cond_33
    const/16 v0, 0x105

    if-ne p0, v0, :cond_34

    const-string v0, "BAND_261"

    return-object v0

    :cond_34
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
