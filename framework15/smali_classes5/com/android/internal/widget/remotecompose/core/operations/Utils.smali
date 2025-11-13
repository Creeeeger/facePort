.class public Lcom/android/internal/widget/remotecompose/core/operations/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asNan(I)F
    .locals 1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static blacklist clamp(I)I
    .locals 2

    const/16 v0, 0xff

    shr-int/lit8 v1, p0, 0x1f

    not-int v1, v1

    and-int/2addr p0, v1

    sub-int/2addr p0, v0

    shr-int/lit8 v1, p0, 0x1f

    and-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public static blacklist colorInt(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist floatToString(F)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist floatToString(FF)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActualValue(F)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist hsvToRgb(FFF)I
    .locals 9

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    mul-float/2addr v0, p0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p1

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-float v6, p2, v2

    mul-float v7, v0, p1

    sub-float v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    float-to-int v6, v6

    mul-float v7, p2, v2

    sub-float v8, v4, v0

    mul-float/2addr v8, p1

    sub-float/2addr v4, v8

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    float-to-int v4, v7

    mul-float/2addr v2, p2

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, -0x1000000

    packed-switch v1, :pswitch_data_0

    const/4 v5, 0x0

    return v5

    :pswitch_0
    shl-int/lit8 v7, v2, 0x10

    shl-int/lit8 v8, v3, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    or-int/2addr v5, v7

    return v5

    :pswitch_1
    shl-int/lit8 v7, v4, 0x10

    shl-int/lit8 v8, v3, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    or-int/2addr v5, v7

    return v5

    :pswitch_2
    shl-int/lit8 v7, v3, 0x10

    shl-int/lit8 v8, v6, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    or-int/2addr v5, v7

    return v5

    :pswitch_3
    shl-int/lit8 v7, v3, 0x10

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    or-int/2addr v5, v7

    return v5

    :pswitch_4
    shl-int/lit8 v7, v6, 0x10

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    or-int/2addr v5, v7

    return v5

    :pswitch_5
    shl-int/lit8 v7, v2, 0x10

    shl-int/lit8 v8, v4, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    or-int/2addr v5, v7

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist idFromNan(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    return v1
.end method

.method public static blacklist interpolateColor(IIF)I
    .locals 24

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v0, 0xff

    int-to-float v6, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    float-to-double v8, v6

    const-wide v10, 0x400199999999999aL    # 2.2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v6, v8

    int-to-float v8, v4

    div-float/2addr v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v9, v7

    float-to-double v12, v9

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v9, v12

    move v12, v6

    move v13, v8

    move v14, v9

    int-to-float v15, v2

    div-float/2addr v15, v7

    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v2, v10, 0xff

    shr-int/lit8 v10, v1, 0x10

    and-int/lit16 v3, v10, 0xff

    shr-int/lit8 v10, v1, 0x8

    and-int/lit16 v4, v10, 0xff

    and-int/lit16 v5, v1, 0xff

    int-to-float v10, v3

    div-float/2addr v10, v7

    float-to-double v10, v10

    move/from16 v19, v8

    const-wide v7, 0x400199999999999aL    # 2.2

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v6, v10

    int-to-float v10, v4

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    move/from16 v16, v12

    float-to-double v11, v10

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    int-to-float v11, v5

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    move v8, v6

    move v9, v10

    move v11, v7

    int-to-float v12, v2

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v12, v12, v17

    sub-float v17, v8, v16

    mul-float v17, v17, p2

    add-float v6, v16, v17

    sub-float v17, v9, v13

    mul-float v17, v17, p2

    add-float v10, v13, v17

    sub-float v17, v11, v14

    mul-float v17, v17, p2

    add-float v7, v14, v17

    sub-float v17, v12, v15

    mul-float v17, v17, p2

    add-float v17, v15, v17

    move/from16 v19, v2

    float-to-double v1, v6

    move/from16 v20, v3

    move/from16 v21, v4

    const-wide v3, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v1

    move/from16 v18, v5

    move/from16 v22, v6

    float-to-double v5, v10

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v5

    move v6, v8

    move/from16 v23, v9

    float-to-double v8, v7

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v3

    mul-float v2, v2, v17

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v2

    shl-int/lit8 v4, v2, 0x18

    shl-int/lit8 v8, v1, 0x10

    or-int/2addr v4, v8

    shl-int/lit8 v8, v5, 0x8

    or-int/2addr v4, v8

    or-int/2addr v4, v3

    return v4

    :cond_2
    :goto_0
    return v0
.end method

.method public static blacklist isVariable(F)Z
    .locals 3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    const/16 v2, 0x28

    if-gt v0, v2, :cond_0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist logStack(Ljava/lang/String;I)V
    .locals 7

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/String;

    new-array v4, v1, [C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static blacklist trimString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, -0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
