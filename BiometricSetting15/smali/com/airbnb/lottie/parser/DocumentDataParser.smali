.class public final Lcom/airbnb/lottie/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/airbnb/lottie/parser/DocumentDataParser;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    .line 7
    .line 8
    const-string v12, "ps"

    .line 9
    .line 10
    const-string v13, "sz"

    .line 11
    .line 12
    const-string v1, "t"

    .line 13
    .line 14
    const-string v2, "f"

    .line 15
    .line 16
    const-string v3, "s"

    .line 17
    .line 18
    const-string v4, "j"

    .line 19
    .line 20
    const-string v5, "tr"

    .line 21
    .line 22
    const-string v6, "lh"

    .line 23
    .line 24
    const-string v7, "ls"

    .line 25
    .line 26
    const-string v8, "fc"

    .line 27
    .line 28
    const-string v9, "sc"

    .line 29
    .line 30
    const-string v10, "sw"

    .line 31
    .line 32
    const-string v11, "of"

    .line 33
    .line 34
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 17

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    move-object v13, v0

    .line 11
    move v5, v2

    .line 12
    move v6, v5

    .line 13
    move v7, v6

    .line 14
    move v8, v7

    .line 15
    move v9, v3

    .line 16
    move v10, v9

    .line 17
    move v11, v10

    .line 18
    move v12, v4

    .line 19
    move-object v2, v1

    .line 20
    move-object v3, v2

    .line 21
    move-object v4, v3

    .line 22
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v14

    .line 26
    if-eqz v14, :cond_2

    .line 27
    .line 28
    sget-object v14, Lcom/airbnb/lottie/parser/DocumentDataParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 29
    .line 30
    move-object/from16 v15, p1

    .line 31
    .line 32
    invoke-virtual {v15, v14}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 33
    .line 34
    .line 35
    move-result v14

    .line 36
    packed-switch v14, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 47
    .line 48
    .line 49
    new-instance v4, Landroid/graphics/PointF;

    .line 50
    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    double-to-float v14, v14

    .line 56
    mul-float v14, v14, p2

    .line 57
    .line 58
    move v15, v11

    .line 59
    move/from16 p0, v12

    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 62
    .line 63
    .line 64
    move-result-wide v11

    .line 65
    double-to-float v11, v11

    .line 66
    mul-float v11, v11, p2

    .line 67
    .line 68
    invoke-direct {v4, v14, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 72
    .line 73
    .line 74
    move/from16 v12, p0

    .line 75
    .line 76
    move v11, v15

    .line 77
    goto :goto_0

    .line 78
    :pswitch_1
    move v15, v11

    .line 79
    move/from16 p0, v12

    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 82
    .line 83
    .line 84
    new-instance v3, Landroid/graphics/PointF;

    .line 85
    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 87
    .line 88
    .line 89
    move-result-wide v11

    .line 90
    double-to-float v11, v11

    .line 91
    mul-float v11, v11, p2

    .line 92
    .line 93
    move v12, v15

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 95
    .line 96
    .line 97
    move-result-wide v14

    .line 98
    double-to-float v14, v14

    .line 99
    mul-float v14, v14, p2

    .line 100
    .line 101
    invoke-direct {v3, v11, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 105
    .line 106
    .line 107
    :goto_1
    move v11, v12

    .line 108
    :goto_2
    move/from16 v12, p0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :pswitch_2
    move v12, v11

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    move/from16 v16, v12

    .line 117
    .line 118
    move v12, v11

    .line 119
    move/from16 v11, v16

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_3
    move/from16 p0, v12

    .line 123
    .line 124
    move v12, v11

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 126
    .line 127
    .line 128
    move-result-wide v14

    .line 129
    double-to-float v8, v14

    .line 130
    goto :goto_2

    .line 131
    :pswitch_4
    move/from16 p0, v12

    .line 132
    .line 133
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    goto :goto_0

    .line 138
    :pswitch_5
    move/from16 p0, v12

    .line 139
    .line 140
    move v12, v11

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    goto :goto_2

    .line 146
    :pswitch_6
    move/from16 p0, v12

    .line 147
    .line 148
    move v12, v11

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 150
    .line 151
    .line 152
    move-result-wide v14

    .line 153
    double-to-float v7, v14

    .line 154
    goto :goto_2

    .line 155
    :pswitch_7
    move/from16 p0, v12

    .line 156
    .line 157
    move v12, v11

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 159
    .line 160
    .line 161
    move-result-wide v14

    .line 162
    double-to-float v6, v14

    .line 163
    goto :goto_2

    .line 164
    :pswitch_8
    move/from16 p0, v12

    .line 165
    .line 166
    move v12, v11

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    goto :goto_2

    .line 172
    :pswitch_9
    move/from16 p0, v12

    .line 173
    .line 174
    move v12, v11

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    const/4 v13, 0x2

    .line 180
    if-gt v11, v13, :cond_1

    .line 181
    .line 182
    if-gez v11, :cond_0

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/DocumentData$Justification;->values()[Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    aget-object v13, v13, v11

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_1
    :goto_3
    move-object v13, v0

    .line 193
    goto :goto_1

    .line 194
    :pswitch_a
    move/from16 p0, v12

    .line 195
    .line 196
    move v12, v11

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 198
    .line 199
    .line 200
    move-result-wide v14

    .line 201
    double-to-float v5, v14

    .line 202
    goto :goto_2

    .line 203
    :pswitch_b
    move/from16 p0, v12

    .line 204
    .line 205
    move v12, v11

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    goto :goto_2

    .line 211
    :pswitch_c
    move/from16 p0, v12

    .line 212
    .line 213
    move v12, v11

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    goto :goto_2

    .line 219
    :cond_2
    move/from16 p0, v12

    .line 220
    .line 221
    move v12, v11

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/airbnb/lottie/model/DocumentData;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 228
    .line 229
    .line 230
    iput-object v1, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 231
    .line 232
    iput-object v2, v0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 233
    .line 234
    iput v5, v0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 235
    .line 236
    iput-object v13, v0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 237
    .line 238
    iput v9, v0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 239
    .line 240
    iput v6, v0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 241
    .line 242
    iput v7, v0, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 243
    .line 244
    iput v10, v0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 245
    .line 246
    iput v12, v0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 247
    .line 248
    iput v8, v0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 249
    .line 250
    move/from16 v11, p0

    .line 251
    .line 252
    iput-boolean v11, v0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 253
    .line 254
    iput-object v3, v0, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    .line 255
    .line 256
    iput-object v4, v0, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 257
    .line 258
    return-object v0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
