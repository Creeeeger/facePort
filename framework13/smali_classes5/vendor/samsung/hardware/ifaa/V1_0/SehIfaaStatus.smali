.class public final Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaStatus;
.super Ljava/lang/Object;
.source "SehIfaaStatus.java"


# static fields
.field public static final blacklist IFAA_ERR_AUTHENTICATOR_SIGN:I = 0x7a000013

.field public static final blacklist IFAA_ERR_BAD_ACCESS:I = 0x7a000002

.field public static final blacklist IFAA_ERR_BAD_PARAM:I = 0x7a000003

.field public static final blacklist IFAA_ERR_BUF_TOO_SHORT:I = 0x7a000005

.field public static final blacklist IFAA_ERR_DEVICE_NOT_TRUSTED:I = 0x7a000021

.field public static final blacklist IFAA_ERR_ERASE:I = 0x7a00000e

.field public static final blacklist IFAA_ERR_GEN_RESPONSE:I = 0x7a000010

.field public static final blacklist IFAA_ERR_GET_AUTHENTICATOR_VERSION:I = 0x7a000015

.field public static final blacklist IFAA_ERR_GET_DEVICEID:I = 0x7a000011

.field public static final blacklist IFAA_ERR_GET_FILE_LIST_FAILED:I = 0x7a000024

.field public static final blacklist IFAA_ERR_GET_ID_LIST:I = 0x7a000014

.field public static final blacklist IFAA_ERR_GET_LAST_IDENTIFIED_RESULT:I = 0x7a000012

.field public static final blacklist IFAA_ERR_HASH:I = 0x7a000008

.field public static final blacklist IFAA_ERR_KEY_GEN:I = 0x7a00000b

.field public static final blacklist IFAA_ERR_MALLOC_FAILED:I = 0x7a000023

.field public static final blacklist IFAA_ERR_NOT_MATCH:I = 0x7a00000f

.field public static final blacklist IFAA_ERR_NO_FILE:I = 0x7a000018

.field public static final blacklist IFAA_ERR_NO_OPTIONAL_LEVEL:I = 0x7a000017

.field public static final blacklist IFAA_ERR_OUT_OF_MEM:I = 0x7a000006

.field public static final blacklist IFAA_ERR_PROVISION_FAILED:I = 0x7a000020

.field public static final blacklist IFAA_ERR_READ:I = 0x7a00000c

.field public static final blacklist IFAA_ERR_SIGN:I = 0x7a000009

.field public static final blacklist IFAA_ERR_SKPM_SIGN_FAILED:I = 0x7a000022

.field public static final blacklist IFAA_ERR_SUCCESS:I = 0x0

.field public static final blacklist IFAA_ERR_TIMEOUT:I = 0x7a000007

.field public static final blacklist IFAA_ERR_UNKNOWN:I = 0x7a000001

.field public static final blacklist IFAA_ERR_UNKNOWN_CMD:I = 0x7a000004

.field public static final blacklist IFAA_ERR_UN_INITIALIZED:I = 0x7a000016

.field public static final blacklist IFAA_ERR_VERIFY:I = 0x7a00000a

.field public static final blacklist IFAA_ERR_WRITE:I = 0x7a00000d


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

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, "flipped":I
    const-string v2, "IFAA_ERR_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const v2, 0x7a000001

    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    .line 134
    const-string v3, "IFAA_ERR_UNKNOWN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/2addr v1, v2

    .line 137
    :cond_0
    const v2, 0x7a000002

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    .line 138
    const-string v3, "IFAA_ERR_BAD_ACCESS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/2addr v1, v2

    .line 141
    :cond_1
    const v2, 0x7a000003

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    .line 142
    const-string v3, "IFAA_ERR_BAD_PARAM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/2addr v1, v2

    .line 145
    :cond_2
    const v2, 0x7a000004

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    .line 146
    const-string v3, "IFAA_ERR_UNKNOWN_CMD"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/2addr v1, v2

    .line 149
    :cond_3
    const v2, 0x7a000005

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    .line 150
    const-string v3, "IFAA_ERR_BUF_TOO_SHORT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/2addr v1, v2

    .line 153
    :cond_4
    const v2, 0x7a000006

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    .line 154
    const-string v3, "IFAA_ERR_OUT_OF_MEM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/2addr v1, v2

    .line 157
    :cond_5
    const v2, 0x7a000007

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    .line 158
    const-string v3, "IFAA_ERR_TIMEOUT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/2addr v1, v2

    .line 161
    :cond_6
    const v2, 0x7a000008

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    .line 162
    const-string v3, "IFAA_ERR_HASH"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/2addr v1, v2

    .line 165
    :cond_7
    const v2, 0x7a000009

    and-int v3, p0, v2

    if-ne v3, v2, :cond_8

    .line 166
    const-string v3, "IFAA_ERR_SIGN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/2addr v1, v2

    .line 169
    :cond_8
    const v2, 0x7a00000a

    and-int v3, p0, v2

    if-ne v3, v2, :cond_9

    .line 170
    const-string v3, "IFAA_ERR_VERIFY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/2addr v1, v2

    .line 173
    :cond_9
    const v2, 0x7a00000b

    and-int v3, p0, v2

    if-ne v3, v2, :cond_a

    .line 174
    const-string v3, "IFAA_ERR_KEY_GEN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/2addr v1, v2

    .line 177
    :cond_a
    const v2, 0x7a00000c

    and-int v3, p0, v2

    if-ne v3, v2, :cond_b

    .line 178
    const-string v3, "IFAA_ERR_READ"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/2addr v1, v2

    .line 181
    :cond_b
    const v2, 0x7a00000d

    and-int v3, p0, v2

    if-ne v3, v2, :cond_c

    .line 182
    const-string v3, "IFAA_ERR_WRITE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/2addr v1, v2

    .line 185
    :cond_c
    const v2, 0x7a00000e

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d

    .line 186
    const-string v3, "IFAA_ERR_ERASE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/2addr v1, v2

    .line 189
    :cond_d
    const v2, 0x7a00000f

    and-int v3, p0, v2

    if-ne v3, v2, :cond_e

    .line 190
    const-string v3, "IFAA_ERR_NOT_MATCH"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/2addr v1, v2

    .line 193
    :cond_e
    const v2, 0x7a000010

    and-int v3, p0, v2

    if-ne v3, v2, :cond_f

    .line 194
    const-string v3, "IFAA_ERR_GEN_RESPONSE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    or-int/2addr v1, v2

    .line 197
    :cond_f
    const v2, 0x7a000011

    and-int v3, p0, v2

    if-ne v3, v2, :cond_10

    .line 198
    const-string v3, "IFAA_ERR_GET_DEVICEID"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    or-int/2addr v1, v2

    .line 201
    :cond_10
    const v2, 0x7a000012

    and-int v3, p0, v2

    if-ne v3, v2, :cond_11

    .line 202
    const-string v3, "IFAA_ERR_GET_LAST_IDENTIFIED_RESULT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    or-int/2addr v1, v2

    .line 205
    :cond_11
    const v2, 0x7a000013

    and-int v3, p0, v2

    if-ne v3, v2, :cond_12

    .line 206
    const-string v3, "IFAA_ERR_AUTHENTICATOR_SIGN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    or-int/2addr v1, v2

    .line 209
    :cond_12
    const v2, 0x7a000014

    and-int v3, p0, v2

    if-ne v3, v2, :cond_13

    .line 210
    const-string v3, "IFAA_ERR_GET_ID_LIST"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    or-int/2addr v1, v2

    .line 213
    :cond_13
    const v2, 0x7a000015

    and-int v3, p0, v2

    if-ne v3, v2, :cond_14

    .line 214
    const-string v3, "IFAA_ERR_GET_AUTHENTICATOR_VERSION"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    or-int/2addr v1, v2

    .line 217
    :cond_14
    const v2, 0x7a000016

    and-int v3, p0, v2

    if-ne v3, v2, :cond_15

    .line 218
    const-string v3, "IFAA_ERR_UN_INITIALIZED"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    or-int/2addr v1, v2

    .line 221
    :cond_15
    const v2, 0x7a000017

    and-int/2addr v2, p0

    const v3, 0x7a000017

    if-ne v2, v3, :cond_16

    .line 222
    const-string v2, "IFAA_ERR_NO_OPTIONAL_LEVEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    const v2, 0x7a000017

    or-int/2addr v1, v2

    .line 225
    :cond_16
    const v2, 0x7a000018

    and-int/2addr v2, p0

    const v3, 0x7a000018

    if-ne v2, v3, :cond_17

    .line 226
    const-string v2, "IFAA_ERR_NO_FILE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const v2, 0x7a000018

    or-int/2addr v1, v2

    .line 229
    :cond_17
    const v2, 0x7a000020

    and-int/2addr v2, p0

    const v3, 0x7a000020

    if-ne v2, v3, :cond_18

    .line 230
    const-string v2, "IFAA_ERR_PROVISION_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const v2, 0x7a000020

    or-int/2addr v1, v2

    .line 233
    :cond_18
    const v2, 0x7a000021

    and-int/2addr v2, p0

    const v3, 0x7a000021

    if-ne v2, v3, :cond_19

    .line 234
    const-string v2, "IFAA_ERR_DEVICE_NOT_TRUSTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const v2, 0x7a000021

    or-int/2addr v1, v2

    .line 237
    :cond_19
    const v2, 0x7a000022

    and-int/2addr v2, p0

    const v3, 0x7a000022

    if-ne v2, v3, :cond_1a

    .line 238
    const-string v2, "IFAA_ERR_SKPM_SIGN_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const v2, 0x7a000022

    or-int/2addr v1, v2

    .line 241
    :cond_1a
    const v2, 0x7a000023

    and-int/2addr v2, p0

    const v3, 0x7a000023

    if-ne v2, v3, :cond_1b

    .line 242
    const-string v2, "IFAA_ERR_MALLOC_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const v2, 0x7a000023

    or-int/2addr v1, v2

    .line 245
    :cond_1b
    const v2, 0x7a000024

    and-int/2addr v2, p0

    const v3, 0x7a000024

    if-ne v2, v3, :cond_1c

    .line 246
    const-string v2, "IFAA_ERR_GET_FILE_LIST_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const v2, 0x7a000024

    or-int/2addr v1, v2

    .line 249
    :cond_1c
    if-eq p0, v1, :cond_1d

    .line 250
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

    .line 252
    :cond_1d
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string v0, "IFAA_ERR_SUCCESS"

    return-object v0

    .line 39
    :cond_0
    const v0, 0x7a000001

    if-ne p0, v0, :cond_1

    .line 40
    const-string v0, "IFAA_ERR_UNKNOWN"

    return-object v0

    .line 42
    :cond_1
    const v0, 0x7a000002

    if-ne p0, v0, :cond_2

    .line 43
    const-string v0, "IFAA_ERR_BAD_ACCESS"

    return-object v0

    .line 45
    :cond_2
    const v0, 0x7a000003

    if-ne p0, v0, :cond_3

    .line 46
    const-string v0, "IFAA_ERR_BAD_PARAM"

    return-object v0

    .line 48
    :cond_3
    const v0, 0x7a000004

    if-ne p0, v0, :cond_4

    .line 49
    const-string v0, "IFAA_ERR_UNKNOWN_CMD"

    return-object v0

    .line 51
    :cond_4
    const v0, 0x7a000005

    if-ne p0, v0, :cond_5

    .line 52
    const-string v0, "IFAA_ERR_BUF_TOO_SHORT"

    return-object v0

    .line 54
    :cond_5
    const v0, 0x7a000006

    if-ne p0, v0, :cond_6

    .line 55
    const-string v0, "IFAA_ERR_OUT_OF_MEM"

    return-object v0

    .line 57
    :cond_6
    const v0, 0x7a000007

    if-ne p0, v0, :cond_7

    .line 58
    const-string v0, "IFAA_ERR_TIMEOUT"

    return-object v0

    .line 60
    :cond_7
    const v0, 0x7a000008

    if-ne p0, v0, :cond_8

    .line 61
    const-string v0, "IFAA_ERR_HASH"

    return-object v0

    .line 63
    :cond_8
    const v0, 0x7a000009

    if-ne p0, v0, :cond_9

    .line 64
    const-string v0, "IFAA_ERR_SIGN"

    return-object v0

    .line 66
    :cond_9
    const v0, 0x7a00000a

    if-ne p0, v0, :cond_a

    .line 67
    const-string v0, "IFAA_ERR_VERIFY"

    return-object v0

    .line 69
    :cond_a
    const v0, 0x7a00000b

    if-ne p0, v0, :cond_b

    .line 70
    const-string v0, "IFAA_ERR_KEY_GEN"

    return-object v0

    .line 72
    :cond_b
    const v0, 0x7a00000c

    if-ne p0, v0, :cond_c

    .line 73
    const-string v0, "IFAA_ERR_READ"

    return-object v0

    .line 75
    :cond_c
    const v0, 0x7a00000d

    if-ne p0, v0, :cond_d

    .line 76
    const-string v0, "IFAA_ERR_WRITE"

    return-object v0

    .line 78
    :cond_d
    const v0, 0x7a00000e

    if-ne p0, v0, :cond_e

    .line 79
    const-string v0, "IFAA_ERR_ERASE"

    return-object v0

    .line 81
    :cond_e
    const v0, 0x7a00000f

    if-ne p0, v0, :cond_f

    .line 82
    const-string v0, "IFAA_ERR_NOT_MATCH"

    return-object v0

    .line 84
    :cond_f
    const v0, 0x7a000010

    if-ne p0, v0, :cond_10

    .line 85
    const-string v0, "IFAA_ERR_GEN_RESPONSE"

    return-object v0

    .line 87
    :cond_10
    const v0, 0x7a000011

    if-ne p0, v0, :cond_11

    .line 88
    const-string v0, "IFAA_ERR_GET_DEVICEID"

    return-object v0

    .line 90
    :cond_11
    const v0, 0x7a000012

    if-ne p0, v0, :cond_12

    .line 91
    const-string v0, "IFAA_ERR_GET_LAST_IDENTIFIED_RESULT"

    return-object v0

    .line 93
    :cond_12
    const v0, 0x7a000013

    if-ne p0, v0, :cond_13

    .line 94
    const-string v0, "IFAA_ERR_AUTHENTICATOR_SIGN"

    return-object v0

    .line 96
    :cond_13
    const v0, 0x7a000014

    if-ne p0, v0, :cond_14

    .line 97
    const-string v0, "IFAA_ERR_GET_ID_LIST"

    return-object v0

    .line 99
    :cond_14
    const v0, 0x7a000015

    if-ne p0, v0, :cond_15

    .line 100
    const-string v0, "IFAA_ERR_GET_AUTHENTICATOR_VERSION"

    return-object v0

    .line 102
    :cond_15
    const v0, 0x7a000016

    if-ne p0, v0, :cond_16

    .line 103
    const-string v0, "IFAA_ERR_UN_INITIALIZED"

    return-object v0

    .line 105
    :cond_16
    const v0, 0x7a000017

    if-ne p0, v0, :cond_17

    .line 106
    const-string v0, "IFAA_ERR_NO_OPTIONAL_LEVEL"

    return-object v0

    .line 108
    :cond_17
    const v0, 0x7a000018

    if-ne p0, v0, :cond_18

    .line 109
    const-string v0, "IFAA_ERR_NO_FILE"

    return-object v0

    .line 111
    :cond_18
    const v0, 0x7a000020

    if-ne p0, v0, :cond_19

    .line 112
    const-string v0, "IFAA_ERR_PROVISION_FAILED"

    return-object v0

    .line 114
    :cond_19
    const v0, 0x7a000021

    if-ne p0, v0, :cond_1a

    .line 115
    const-string v0, "IFAA_ERR_DEVICE_NOT_TRUSTED"

    return-object v0

    .line 117
    :cond_1a
    const v0, 0x7a000022

    if-ne p0, v0, :cond_1b

    .line 118
    const-string v0, "IFAA_ERR_SKPM_SIGN_FAILED"

    return-object v0

    .line 120
    :cond_1b
    const v0, 0x7a000023

    if-ne p0, v0, :cond_1c

    .line 121
    const-string v0, "IFAA_ERR_MALLOC_FAILED"

    return-object v0

    .line 123
    :cond_1c
    const v0, 0x7a000024

    if-ne p0, v0, :cond_1d

    .line 124
    const-string v0, "IFAA_ERR_GET_FILE_LIST_FAILED"

    return-object v0

    .line 126
    :cond_1d
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
