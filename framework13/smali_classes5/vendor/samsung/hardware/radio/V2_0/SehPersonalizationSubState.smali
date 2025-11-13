.class public final Lvendor/samsung/hardware/radio/V2_0/SehPersonalizationSubState;
.super Ljava/lang/Object;
.source "SehPersonalizationSubState.java"


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

.field public static final blacklist SIM_NETWORK:I = 0x3

.field public static final blacklist SIM_NETWORK_PUK:I = 0x8

.field public static final blacklist SIM_NETWORK_SUBSET:I = 0x4

.field public static final blacklist SIM_NETWORK_SUBSET_PUK:I = 0x9

.field public static final blacklist SIM_REGIONAL:I = 0x1a

.field public static final blacklist SIM_REGIONAL_PUK:I = 0x1b

.field public static final blacklist SIM_SERVICE_PROVIDER:I = 0x6

.field public static final blacklist SIM_SERVICE_PROVIDER_PUK:I = 0xb

.field public static final blacklist SIM_SIM:I = 0x7

.field public static final blacklist SIM_SIM_PUK:I = 0xc

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist USIM_MANUFACTURE_NETWORK:I = 0x19


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 209
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 211
    const-string v2, "IN_PROGRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    or-int/lit8 v1, v1, 0x1

    .line 214
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 215
    const-string v2, "READY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    or-int/lit8 v1, v1, 0x2

    .line 218
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 219
    const-string v2, "SIM_NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    or-int/lit8 v1, v1, 0x3

    .line 222
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 223
    const-string v2, "SIM_NETWORK_SUBSET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    or-int/lit8 v1, v1, 0x4

    .line 226
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 227
    const-string v2, "SIM_CORPORATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    or-int/lit8 v1, v1, 0x5

    .line 230
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 231
    const-string v2, "SIM_SERVICE_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    or-int/lit8 v1, v1, 0x6

    .line 234
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 235
    const-string v2, "SIM_SIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    or-int/lit8 v1, v1, 0x7

    .line 238
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 239
    const-string v2, "SIM_NETWORK_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    or-int/lit8 v1, v1, 0x8

    .line 242
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 243
    const-string v2, "SIM_NETWORK_SUBSET_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    or-int/lit8 v1, v1, 0x9

    .line 246
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 247
    const-string v2, "SIM_CORPORATE_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    or-int/lit8 v1, v1, 0xa

    .line 250
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 251
    const-string v2, "SIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    or-int/lit8 v1, v1, 0xb

    .line 254
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 255
    const-string v2, "SIM_SIM_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    or-int/lit8 v1, v1, 0xc

    .line 258
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 259
    const-string v2, "RUIM_NETWORK1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    or-int/lit8 v1, v1, 0xd

    .line 262
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 263
    const-string v2, "RUIM_NETWORK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    or-int/lit8 v1, v1, 0xe

    .line 266
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 267
    const-string v2, "RUIM_HRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    or-int/lit8 v1, v1, 0xf

    .line 270
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 271
    const-string v2, "RUIM_CORPORATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    or-int/lit8 v1, v1, 0x10

    .line 274
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 275
    const-string v2, "RUIM_SERVICE_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    or-int/lit8 v1, v1, 0x11

    .line 278
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 279
    const-string v2, "RUIM_RUIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    or-int/lit8 v1, v1, 0x12

    .line 282
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 283
    const-string v2, "RUIM_NETWORK1_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    or-int/lit8 v1, v1, 0x13

    .line 286
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 287
    const-string v2, "RUIM_NETWORK2_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    or-int/lit8 v1, v1, 0x14

    .line 290
    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    .line 291
    const-string v2, "RUIM_HRPD_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    or-int/lit8 v1, v1, 0x15

    .line 294
    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    .line 295
    const-string v2, "RUIM_CORPORATE_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    or-int/lit8 v1, v1, 0x16

    .line 298
    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    .line 299
    const-string v2, "RUIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    or-int/lit8 v1, v1, 0x17

    .line 302
    :cond_16
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_17

    .line 303
    const-string v2, "RUIM_RUIM_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    or-int/lit8 v1, v1, 0x18

    .line 306
    :cond_17
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_18

    .line 307
    const-string v2, "USIM_MANUFACTURE_NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    or-int/lit8 v1, v1, 0x19

    .line 310
    :cond_18
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    .line 311
    const-string v2, "SIM_REGIONAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    or-int/lit8 v1, v1, 0x1a

    .line 314
    :cond_19
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1a

    .line 315
    const-string v2, "SIM_REGIONAL_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    or-int/lit8 v1, v1, 0x1b

    .line 318
    :cond_1a
    if-eq p0, v1, :cond_1b

    .line 319
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

    .line 321
    :cond_1b
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 119
    if-nez p0, :cond_0

    .line 120
    const-string v0, "UNKNOWN"

    return-object v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 123
    const-string v0, "IN_PROGRESS"

    return-object v0

    .line 125
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 126
    const-string v0, "READY"

    return-object v0

    .line 128
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 129
    const-string v0, "SIM_NETWORK"

    return-object v0

    .line 131
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 132
    const-string v0, "SIM_NETWORK_SUBSET"

    return-object v0

    .line 134
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 135
    const-string v0, "SIM_CORPORATE"

    return-object v0

    .line 137
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 138
    const-string v0, "SIM_SERVICE_PROVIDER"

    return-object v0

    .line 140
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 141
    const-string v0, "SIM_SIM"

    return-object v0

    .line 143
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 144
    const-string v0, "SIM_NETWORK_PUK"

    return-object v0

    .line 146
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 147
    const-string v0, "SIM_NETWORK_SUBSET_PUK"

    return-object v0

    .line 149
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 150
    const-string v0, "SIM_CORPORATE_PUK"

    return-object v0

    .line 152
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 153
    const-string v0, "SIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 155
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 156
    const-string v0, "SIM_SIM_PUK"

    return-object v0

    .line 158
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 159
    const-string v0, "RUIM_NETWORK1"

    return-object v0

    .line 161
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 162
    const-string v0, "RUIM_NETWORK2"

    return-object v0

    .line 164
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 165
    const-string v0, "RUIM_HRPD"

    return-object v0

    .line 167
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 168
    const-string v0, "RUIM_CORPORATE"

    return-object v0

    .line 170
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 171
    const-string v0, "RUIM_SERVICE_PROVIDER"

    return-object v0

    .line 173
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 174
    const-string v0, "RUIM_RUIM"

    return-object v0

    .line 176
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 177
    const-string v0, "RUIM_NETWORK1_PUK"

    return-object v0

    .line 179
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 180
    const-string v0, "RUIM_NETWORK2_PUK"

    return-object v0

    .line 182
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 183
    const-string v0, "RUIM_HRPD_PUK"

    return-object v0

    .line 185
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 186
    const-string v0, "RUIM_CORPORATE_PUK"

    return-object v0

    .line 188
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 189
    const-string v0, "RUIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 191
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 192
    const-string v0, "RUIM_RUIM_PUK"

    return-object v0

    .line 194
    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    .line 195
    const-string v0, "USIM_MANUFACTURE_NETWORK"

    return-object v0

    .line 197
    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    .line 198
    const-string v0, "SIM_REGIONAL"

    return-object v0

    .line 200
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    .line 201
    const-string v0, "SIM_REGIONAL_PUK"

    return-object v0

    .line 203
    :cond_1b
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
