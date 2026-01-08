.class public final enum Landroidx/core/graphics/BlendModeCompat;
.super Ljava/lang/Enum;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final synthetic $VALUES:[Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DARKEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum OVERLAY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum PLUS:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SCREEN:Landroidx/core/graphics/BlendModeCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 2
    .line 3
    const-string v1, "CLEAR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 10
    .line 11
    const-string v2, "SRC"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 18
    .line 19
    const-string v3, "DST"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroidx/core/graphics/BlendModeCompat;

    .line 26
    .line 27
    const-string v4, "SRC_OVER"

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 34
    .line 35
    const-string v5, "DST_OVER"

    .line 36
    .line 37
    const/4 v6, 0x4

    .line 38
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Landroidx/core/graphics/BlendModeCompat;

    .line 42
    .line 43
    const-string v6, "SRC_IN"

    .line 44
    .line 45
    const/4 v7, 0x5

    .line 46
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 50
    .line 51
    const-string v7, "DST_IN"

    .line 52
    .line 53
    const/4 v8, 0x6

    .line 54
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Landroidx/core/graphics/BlendModeCompat;

    .line 58
    .line 59
    const-string v8, "SRC_OUT"

    .line 60
    .line 61
    const/4 v9, 0x7

    .line 62
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    new-instance v8, Landroidx/core/graphics/BlendModeCompat;

    .line 66
    .line 67
    const-string v9, "DST_OUT"

    .line 68
    .line 69
    const/16 v10, 0x8

    .line 70
    .line 71
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    new-instance v9, Landroidx/core/graphics/BlendModeCompat;

    .line 75
    .line 76
    const-string v10, "SRC_ATOP"

    .line 77
    .line 78
    const/16 v11, 0x9

    .line 79
    .line 80
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    new-instance v10, Landroidx/core/graphics/BlendModeCompat;

    .line 84
    .line 85
    const-string v11, "DST_ATOP"

    .line 86
    .line 87
    const/16 v12, 0xa

    .line 88
    .line 89
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    new-instance v11, Landroidx/core/graphics/BlendModeCompat;

    .line 93
    .line 94
    const-string v12, "XOR"

    .line 95
    .line 96
    const/16 v13, 0xb

    .line 97
    .line 98
    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    new-instance v12, Landroidx/core/graphics/BlendModeCompat;

    .line 102
    .line 103
    const-string v13, "PLUS"

    .line 104
    .line 105
    const/16 v14, 0xc

    .line 106
    .line 107
    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    sput-object v12, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    .line 111
    .line 112
    new-instance v13, Landroidx/core/graphics/BlendModeCompat;

    .line 113
    .line 114
    const-string v14, "MODULATE"

    .line 115
    .line 116
    const/16 v15, 0xd

    .line 117
    .line 118
    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 122
    .line 123
    const-string v15, "SCREEN"

    .line 124
    .line 125
    move-object/from16 v16, v13

    .line 126
    .line 127
    const/16 v13, 0xe

    .line 128
    .line 129
    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    sput-object v14, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    .line 133
    .line 134
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 135
    .line 136
    const-string v13, "OVERLAY"

    .line 137
    .line 138
    move-object/from16 v17, v14

    .line 139
    .line 140
    const/16 v14, 0xf

    .line 141
    .line 142
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v15, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    .line 146
    .line 147
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 148
    .line 149
    const-string v13, "DARKEN"

    .line 150
    .line 151
    move-object/from16 v18, v15

    .line 152
    .line 153
    const/16 v15, 0x10

    .line 154
    .line 155
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    sput-object v14, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    .line 159
    .line 160
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 161
    .line 162
    const-string v13, "LIGHTEN"

    .line 163
    .line 164
    move-object/from16 v19, v14

    .line 165
    .line 166
    const/16 v14, 0x11

    .line 167
    .line 168
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    sput-object v15, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    .line 172
    .line 173
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 174
    .line 175
    const-string v13, "COLOR_DODGE"

    .line 176
    .line 177
    move-object/from16 v20, v15

    .line 178
    .line 179
    const/16 v15, 0x12

    .line 180
    .line 181
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 185
    .line 186
    const-string v13, "COLOR_BURN"

    .line 187
    .line 188
    move-object/from16 v21, v14

    .line 189
    .line 190
    const/16 v14, 0x13

    .line 191
    .line 192
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 196
    .line 197
    const-string v13, "HARD_LIGHT"

    .line 198
    .line 199
    move-object/from16 v22, v15

    .line 200
    .line 201
    const/16 v15, 0x14

    .line 202
    .line 203
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 207
    .line 208
    const-string v13, "SOFT_LIGHT"

    .line 209
    .line 210
    move-object/from16 v23, v14

    .line 211
    .line 212
    const/16 v14, 0x15

    .line 213
    .line 214
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 218
    .line 219
    const-string v13, "DIFFERENCE"

    .line 220
    .line 221
    move-object/from16 v24, v15

    .line 222
    .line 223
    const/16 v15, 0x16

    .line 224
    .line 225
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 229
    .line 230
    const-string v13, "EXCLUSION"

    .line 231
    .line 232
    move-object/from16 v25, v14

    .line 233
    .line 234
    const/16 v14, 0x17

    .line 235
    .line 236
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 240
    .line 241
    const-string v13, "MULTIPLY"

    .line 242
    .line 243
    move-object/from16 v26, v15

    .line 244
    .line 245
    const/16 v15, 0x18

    .line 246
    .line 247
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 251
    .line 252
    const-string v13, "HUE"

    .line 253
    .line 254
    move-object/from16 v27, v14

    .line 255
    .line 256
    const/16 v14, 0x19

    .line 257
    .line 258
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 262
    .line 263
    const-string v13, "SATURATION"

    .line 264
    .line 265
    move-object/from16 v28, v15

    .line 266
    .line 267
    const/16 v15, 0x1a

    .line 268
    .line 269
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 273
    .line 274
    const-string v13, "COLOR"

    .line 275
    .line 276
    move-object/from16 v29, v14

    .line 277
    .line 278
    const/16 v14, 0x1b

    .line 279
    .line 280
    invoke-direct {v15, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 284
    .line 285
    const-string v13, "LUMINOSITY"

    .line 286
    .line 287
    move-object/from16 v30, v15

    .line 288
    .line 289
    const/16 v15, 0x1c

    .line 290
    .line 291
    invoke-direct {v14, v13, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    move-object/from16 v13, v16

    .line 295
    .line 296
    move-object/from16 v16, v19

    .line 297
    .line 298
    move-object/from16 v19, v21

    .line 299
    .line 300
    move-object/from16 v21, v23

    .line 301
    .line 302
    move-object/from16 v23, v25

    .line 303
    .line 304
    move-object/from16 v25, v27

    .line 305
    .line 306
    move-object/from16 v27, v29

    .line 307
    .line 308
    move-object/from16 v29, v14

    .line 309
    .line 310
    move-object/from16 v14, v17

    .line 311
    .line 312
    move-object/from16 v17, v20

    .line 313
    .line 314
    move-object/from16 v20, v22

    .line 315
    .line 316
    move-object/from16 v22, v24

    .line 317
    .line 318
    move-object/from16 v24, v26

    .line 319
    .line 320
    move-object/from16 v26, v28

    .line 321
    .line 322
    move-object/from16 v28, v30

    .line 323
    .line 324
    move-object/from16 v15, v18

    .line 325
    .line 326
    move-object/from16 v18, v19

    .line 327
    .line 328
    move-object/from16 v19, v20

    .line 329
    .line 330
    move-object/from16 v20, v21

    .line 331
    .line 332
    move-object/from16 v21, v22

    .line 333
    .line 334
    move-object/from16 v22, v23

    .line 335
    .line 336
    move-object/from16 v23, v24

    .line 337
    .line 338
    move-object/from16 v24, v25

    .line 339
    .line 340
    move-object/from16 v25, v26

    .line 341
    .line 342
    move-object/from16 v26, v27

    .line 343
    .line 344
    move-object/from16 v27, v28

    .line 345
    .line 346
    move-object/from16 v28, v29

    .line 347
    .line 348
    filled-new-array/range {v0 .. v28}, [Landroidx/core/graphics/BlendModeCompat;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    .line 353
    .line 354
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 1
    const-class v0, Landroidx/core/graphics/BlendModeCompat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/core/graphics/BlendModeCompat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/core/graphics/BlendModeCompat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/core/graphics/BlendModeCompat;

    .line 8
    .line 9
    return-object v0
.end method
