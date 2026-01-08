.class public abstract Lkotlin/text/StringsKt__StringsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# direct methods
.method public static final indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 7

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    instance-of v0, p0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    goto/16 :goto_b

    .line 15
    .line 16
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-gez p2, :cond_2

    .line 24
    .line 25
    move p2, v2

    .line 26
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-le v0, v3, :cond_3

    .line 31
    .line 32
    move v0, v3

    .line 33
    :cond_3
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, p2, v0, v3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 35
    .line 36
    .line 37
    instance-of v0, p0, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    iget v0, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 42
    .line 43
    if-le p2, v0, :cond_4

    .line 44
    .line 45
    goto/16 :goto_a

    .line 46
    .line 47
    :cond_4
    :goto_1
    move-object v4, p0

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const/4 v3, 0x0

    .line 55
    if-nez p3, :cond_5

    .line 56
    .line 57
    invoke-virtual {p1, v3, v4, p2, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_2

    .line 62
    :cond_5
    move-object v1, p1

    .line 63
    move v2, p3

    .line 64
    move v5, p2

    .line 65
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :goto_2
    if-eqz v1, :cond_6

    .line 70
    .line 71
    :goto_3
    move p0, p2

    .line 72
    goto/16 :goto_b

    .line 73
    .line 74
    :cond_6
    if-eq p2, v0, :cond_12

    .line 75
    .line 76
    add-int/lit8 p2, p2, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_7
    iget v0, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 80
    .line 81
    if-le p2, v0, :cond_8

    .line 82
    .line 83
    goto :goto_a

    .line 84
    :cond_8
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ltz p2, :cond_e

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    sub-int/2addr v4, v1

    .line 95
    if-ltz v4, :cond_e

    .line 96
    .line 97
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    sub-int/2addr v4, v1

    .line 102
    if-le p2, v4, :cond_9

    .line 103
    .line 104
    goto :goto_8

    .line 105
    :cond_9
    move v4, v2

    .line 106
    :goto_5
    if-ge v4, v1, :cond_10

    .line 107
    .line 108
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    add-int v6, p2, v4

    .line 113
    .line 114
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-ne v5, v6, :cond_b

    .line 119
    .line 120
    :cond_a
    :goto_6
    move v5, v3

    .line 121
    goto :goto_7

    .line 122
    :cond_b
    if-nez p3, :cond_d

    .line 123
    .line 124
    :cond_c
    move v5, v2

    .line 125
    goto :goto_7

    .line 126
    :cond_d
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eq v5, v6, :cond_a

    .line 135
    .line 136
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-ne v5, v6, :cond_c

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :goto_7
    if-nez v5, :cond_f

    .line 148
    .line 149
    :cond_e
    :goto_8
    move v1, v2

    .line 150
    goto :goto_9

    .line 151
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_10
    move v1, v3

    .line 155
    :goto_9
    if-eqz v1, :cond_11

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_11
    if-eq p2, v0, :cond_12

    .line 159
    .line 160
    add-int/lit8 p2, p2, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_12
    :goto_a
    const/4 p0, -0x1

    .line 164
    :goto_b
    return p0
.end method

.method public static replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-gez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v3, v2

    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sub-int/2addr v4, v2

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    add-int/2addr v5, v4

    .line 28
    if-ltz v5, :cond_4

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    move v5, v0

    .line 36
    :cond_2
    invoke-virtual {v4, p0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    add-int v5, v1, v2

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-ge v1, v6, :cond_3

    .line 49
    .line 50
    add-int/2addr v1, v3

    .line 51
    invoke-static {p0, p1, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-gtz v1, :cond_2

    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {v4, p0, v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "toString(...)"

    .line 69
    .line 70
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-object p0

    .line 74
    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public static substringAfterLast$default(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "missingDelimiterValue"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    const/16 v1, 0x2e

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, -0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "substring(...)"

    .line 38
    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object p0
.end method
