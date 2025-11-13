.class public Landroid/view/inputmethod/SemBaseInputConnectionUtil;
.super Ljava/lang/Object;
.source "SemBaseInputConnectionUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertAllBrackets(Ljava/lang/CharSequence;ILandroid/text/Editable;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "newCursorPosition"    # I
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "targetView"    # Landroid/view/View;

    .line 22
    invoke-static {p0}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isAllBracketChars(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRTLText(Ljava/lang/String;ILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    return-object p0
.end method

.method private static blacklist convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 164
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "sText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 166
    .local v1, "nIndex":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "ch":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    nop

    .end local v2    # "ch":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    return-object v0
.end method

.method private static blacklist convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 175
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "sText":Ljava/lang/String;
    const-string/jumbo v1, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string/jumbo v0, "}"

    goto/16 :goto_0

    .line 179
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const-string/jumbo v0, "{"

    goto/16 :goto_0

    .line 181
    :cond_1
    const-string v1, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    const-string v0, "]"

    goto/16 :goto_0

    .line 183
    :cond_2
    const-string v1, "]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    const-string v0, "["

    goto/16 :goto_0

    .line 185
    :cond_3
    const-string v1, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    const-string v0, ">"

    goto/16 :goto_0

    .line 187
    :cond_4
    const-string v1, ">"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    const-string v0, "<"

    goto/16 :goto_0

    .line 189
    :cond_5
    const-string v1, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 190
    const-string v0, ")"

    goto/16 :goto_0

    .line 191
    :cond_6
    const-string v1, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 192
    const-string v0, "("

    goto/16 :goto_0

    .line 193
    :cond_7
    const/16 v1, 0xab

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xbb

    if-eqz v2, :cond_8

    .line 194
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 196
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :cond_9
    const/16 v1, 0x300a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x300b

    if-eqz v2, :cond_a

    .line 198
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    :cond_a
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 200
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_b
    const-string/jumbo v1, "\u300e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 202
    const-string/jumbo v0, "\u300f"

    goto :goto_0

    .line 203
    :cond_c
    const-string/jumbo v1, "\u300f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 204
    const-string/jumbo v0, "\u300e"

    goto :goto_0

    .line 205
    :cond_d
    const-string/jumbo v1, "\u300c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 206
    const-string/jumbo v0, "\u300d"

    goto :goto_0

    .line 207
    :cond_e
    const-string/jumbo v1, "\u300d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 208
    const-string/jumbo v0, "\u300c"

    goto :goto_0

    .line 209
    :cond_f
    const-string/jumbo v1, "\u3014"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 210
    const-string/jumbo v0, "\u3015"

    goto :goto_0

    .line 211
    :cond_10
    const-string/jumbo v1, "\u3015"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 212
    const-string/jumbo v0, "\u3014"

    goto :goto_0

    .line 213
    :cond_11
    const-string/jumbo v1, "\u3010"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 214
    const-string/jumbo v0, "\u3011"

    goto :goto_0

    .line 215
    :cond_12
    const-string/jumbo v1, "\u3011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 216
    const-string/jumbo v0, "\u3010"

    .line 218
    :cond_13
    :goto_0
    return-object v0
.end method

.method private static blacklist isAllBracketChars(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 150
    const-string v0, "<>{}[]()\u00ab\u00bb\u300a\u300b\u300e\u300f\u300c\u300d\u3014\u3015\u3010\u3011"

    .line 151
    .local v0, "BRACKET":Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "sText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .local v2, "nIndex":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "ch":Ljava/lang/CharSequence;
    const-string v4, "<>{}[]()\u00ab\u00bb\u300a\u300b\u300e\u300f\u300c\u300d\u3014\u3015\u3010\u3011"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const/4 v4, 0x0

    return v4

    .line 158
    :cond_0
    nop

    .end local v3    # "ch":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private static blacklist isRTLText(Ljava/lang/String;ILandroid/view/View;)Z
    .locals 16
    .param p0, "sCurStr"    # Ljava/lang/String;
    .param p1, "newCursorPosition"    # I
    .param p2, "targetView"    # Landroid/view/View;

    .line 29
    move-object/from16 v0, p0

    const/16 v1, 0xa

    .line 30
    .local v1, "PARA":C
    const/4 v2, -0x1

    .line 31
    .local v2, "DIRECTION_NONE":I
    const/4 v3, 0x0

    .line 32
    .local v3, "DIRECTION_LTR":I
    const/4 v4, 0x1

    .line 33
    .local v4, "DIRECTION_RTL":I
    const/4 v5, -0x1

    .line 35
    .local v5, "nDirection":I
    const/4 v6, -0x1

    .line 37
    .local v6, "nLastEnterPos":I
    const/4 v7, 0x1

    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_18

    .line 38
    const/16 v8, 0xa

    if-eqz p1, :cond_0

    .line 39
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 42
    :cond_0
    if-gez v6, :cond_1

    .line 43
    const/4 v6, 0x0

    goto :goto_0

    .line 45
    :cond_1
    add-int/2addr v6, v7

    .line 48
    :goto_0
    move v9, v6

    .line 49
    .local v9, "nIndex":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/16 v14, 0xf

    const/16 v15, 0xe

    if-ge v9, v10, :cond_7

    .line 50
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 51
    .local v10, "ch":C
    if-ne v10, v8, :cond_2

    goto :goto_4

    .line 53
    :cond_2
    invoke-static {v10}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v8

    .line 55
    .local v8, "directionality":B
    if-eqz v8, :cond_6

    if-eq v8, v15, :cond_6

    if-ne v8, v14, :cond_3

    goto :goto_3

    .line 60
    :cond_3
    if-eq v8, v7, :cond_5

    if-eq v8, v13, :cond_5

    if-eq v8, v12, :cond_5

    if-ne v8, v11, :cond_4

    goto :goto_2

    .line 67
    :cond_4
    nop

    .end local v8    # "directionality":B
    .end local v10    # "ch":C
    add-int/lit8 v9, v9, 0x1

    .line 68
    const/16 v8, 0xa

    goto :goto_1

    .line 64
    .restart local v8    # "directionality":B
    .restart local v10    # "ch":C
    :cond_5
    :goto_2
    const/4 v5, 0x1

    .line 65
    goto :goto_4

    .line 58
    :cond_6
    :goto_3
    const/4 v5, 0x0

    .line 70
    .end local v8    # "directionality":B
    .end local v10    # "ch":C
    :cond_7
    :goto_4
    move/from16 v8, p1

    .line 71
    .end local v9    # "nIndex":I
    .local v8, "nIndex":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 72
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 73
    .local v9, "ch":C
    const/16 v10, 0xa

    if-ne v9, v10, :cond_8

    goto :goto_7

    .line 75
    :cond_8
    invoke-static {v9}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v10

    .line 76
    .local v10, "directionality":B
    if-eqz v10, :cond_a

    if-eq v10, v15, :cond_a

    if-eq v10, v14, :cond_a

    if-eq v10, v7, :cond_a

    if-eq v10, v13, :cond_a

    if-eq v10, v12, :cond_a

    if-eq v10, v11, :cond_a

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    goto :goto_6

    .line 87
    :cond_9
    nop

    .end local v9    # "ch":C
    .end local v10    # "directionality":B
    add-int/lit8 v8, v8, 0x1

    .line 88
    const/16 v11, 0x11

    goto :goto_5

    .line 84
    .restart local v9    # "ch":C
    .restart local v10    # "directionality":B
    :cond_a
    :goto_6
    const/4 v5, -0x1

    .line 90
    .end local v9    # "ch":C
    .end local v10    # "directionality":B
    :cond_b
    :goto_7
    const/4 v9, -0x1

    if-ne v5, v9, :cond_19

    .line 91
    add-int/lit8 v8, p1, -0x1

    .line 92
    :goto_8
    if-ltz v8, :cond_11

    .line 93
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 94
    .local v10, "ch":C
    const/16 v11, 0xa

    if-ne v10, v11, :cond_c

    goto :goto_b

    .line 96
    :cond_c
    invoke-static {v10}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v11

    .line 98
    .local v11, "directionality":B
    if-eqz v11, :cond_10

    if-eq v11, v15, :cond_10

    if-ne v11, v14, :cond_d

    goto :goto_a

    .line 103
    :cond_d
    if-eq v11, v7, :cond_f

    if-eq v11, v13, :cond_f

    if-eq v11, v12, :cond_f

    const/16 v12, 0x11

    if-ne v11, v12, :cond_e

    goto :goto_9

    .line 110
    :cond_e
    nop

    .end local v10    # "ch":C
    .end local v11    # "directionality":B
    add-int/lit8 v8, v8, -0x1

    .line 111
    const/16 v12, 0x10

    goto :goto_8

    .line 107
    .restart local v10    # "ch":C
    .restart local v11    # "directionality":B
    :cond_f
    :goto_9
    const/4 v5, 0x1

    .line 108
    goto :goto_b

    .line 101
    :cond_10
    :goto_a
    const/4 v5, 0x0

    .line 113
    .end local v10    # "ch":C
    .end local v11    # "directionality":B
    :cond_11
    :goto_b
    if-ne v5, v9, :cond_17

    .line 114
    move/from16 v8, p1

    .line 115
    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_17

    .line 116
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 117
    .restart local v10    # "ch":C
    const/16 v11, 0xa

    if-ne v10, v11, :cond_12

    goto :goto_f

    .line 119
    :cond_12
    invoke-static {v10}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v12

    .line 121
    .local v12, "directionality":B
    if-eqz v12, :cond_16

    if-eq v12, v15, :cond_16

    if-ne v12, v14, :cond_13

    goto :goto_e

    .line 126
    :cond_13
    if-eq v12, v7, :cond_15

    if-eq v12, v13, :cond_15

    const/16 v11, 0x10

    if-eq v12, v11, :cond_15

    const/16 v11, 0x11

    if-ne v12, v11, :cond_14

    goto :goto_d

    .line 133
    :cond_14
    nop

    .end local v10    # "ch":C
    .end local v12    # "directionality":B
    add-int/lit8 v8, v8, 0x1

    .line 134
    goto :goto_c

    .line 130
    .restart local v10    # "ch":C
    .restart local v12    # "directionality":B
    :cond_15
    :goto_d
    const/4 v5, 0x1

    .line 131
    goto :goto_f

    .line 124
    :cond_16
    :goto_e
    const/4 v5, 0x0

    .line 136
    .end local v10    # "ch":C
    .end local v12    # "directionality":B
    :cond_17
    :goto_f
    if-ne v5, v9, :cond_19

    if-eqz p2, :cond_19

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-ne v9, v7, :cond_19

    .line 138
    invoke-static {}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRtlLanguage()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 139
    const/4 v5, 0x1

    goto :goto_10

    .line 142
    .end local v8    # "nIndex":I
    :cond_18
    invoke-static {}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRtlLanguage()Z

    move-result v8

    if-eqz v8, :cond_19

    if-eqz p2, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    if-ne v8, v7, :cond_19

    .line 143
    return v7

    .line 146
    :cond_19
    :goto_10
    if-ne v5, v7, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v7, 0x0

    :goto_11
    return v7
.end method

.method private static blacklist isRtlLanguage()Z
    .locals 3

    .line 222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 223
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "curLanguage":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "fa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ur"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "iw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method
