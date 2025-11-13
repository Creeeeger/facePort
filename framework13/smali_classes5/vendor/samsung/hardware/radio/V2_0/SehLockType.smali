.class public final Lvendor/samsung/hardware/radio/V2_0/SehLockType;
.super Ljava/lang/Object;
.source "SehLockType.java"


# static fields
.field public static final blacklist ACL:I = 0xb

.field public static final blacklist FD:I = 0x4

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NO_SIM:I = 0x10

.field public static final blacklist ONE:I = 0xd

.field public static final blacklist PC:I = 0x8

.field public static final blacklist PF:I = 0x2

.field public static final blacklist PN:I = 0x5

.field public static final blacklist POLICY:I = 0xf

.field public static final blacklist PP:I = 0x7

.field public static final blacklist PS:I = 0x1

.field public static final blacklist PU:I = 0x6

.field public static final blacklist PUK2:I = 0xa

.field public static final blacklist REG:I = 0xc

.field public static final blacklist SC:I = 0x3

.field public static final blacklist SC2:I = 0x9

.field public static final blacklist SEP:I = 0xe

.field public static final blacklist UNAVAIL:I = 0x11

.field public static final blacklist UNSPECIFIED:I = -0x1


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

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 151
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 152
    const-string v2, "UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    or-int/lit8 v1, v1, -0x1

    .line 155
    :cond_0
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 157
    const-string v2, "PS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v1, v1, 0x1

    .line 160
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 161
    const-string v2, "PF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v1, v1, 0x2

    .line 164
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 165
    const-string v2, "SC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v1, v1, 0x3

    .line 168
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 169
    const-string v2, "FD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v1, v1, 0x4

    .line 172
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 173
    const-string v2, "PN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v1, v1, 0x5

    .line 176
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 177
    const-string v2, "PU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0x6

    .line 180
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 181
    const-string v2, "PP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v1, v1, 0x7

    .line 184
    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 185
    const-string v2, "PC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v1, v1, 0x8

    .line 188
    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 189
    const-string v2, "SC2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v1, v1, 0x9

    .line 192
    :cond_9
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 193
    const-string v2, "PUK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v1, v1, 0xa

    .line 196
    :cond_a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b

    .line 197
    const-string v2, "ACL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v1, v1, 0xb

    .line 200
    :cond_b
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    .line 201
    const-string v2, "REG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v1, v1, 0xc

    .line 204
    :cond_c
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    .line 205
    const-string v2, "ONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v1, v1, 0xd

    .line 208
    :cond_d
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_e

    .line 209
    const-string v2, "SEP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit8 v1, v1, 0xe

    .line 212
    :cond_e
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_f

    .line 213
    const-string v2, "POLICY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    or-int/lit8 v1, v1, 0xf

    .line 216
    :cond_f
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    .line 217
    const-string v2, "NO_SIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    or-int/lit8 v1, v1, 0x10

    .line 220
    :cond_10
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_11

    .line 221
    const-string v2, "UNAVAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    or-int/lit8 v1, v1, 0x11

    .line 224
    :cond_11
    if-eq p0, v1, :cond_12

    .line 225
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

    .line 227
    :cond_12
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 88
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 89
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 91
    :cond_0
    if-nez p0, :cond_1

    .line 92
    const-string v0, "NONE"

    return-object v0

    .line 94
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 95
    const-string v0, "PS"

    return-object v0

    .line 97
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 98
    const-string v0, "PF"

    return-object v0

    .line 100
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 101
    const-string v0, "SC"

    return-object v0

    .line 103
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 104
    const-string v0, "FD"

    return-object v0

    .line 106
    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_6

    .line 107
    const-string v0, "PN"

    return-object v0

    .line 109
    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    .line 110
    const-string v0, "PU"

    return-object v0

    .line 112
    :cond_7
    const/4 v0, 0x7

    if-ne p0, v0, :cond_8

    .line 113
    const-string v0, "PP"

    return-object v0

    .line 115
    :cond_8
    const/16 v0, 0x8

    if-ne p0, v0, :cond_9

    .line 116
    const-string v0, "PC"

    return-object v0

    .line 118
    :cond_9
    const/16 v0, 0x9

    if-ne p0, v0, :cond_a

    .line 119
    const-string v0, "SC2"

    return-object v0

    .line 121
    :cond_a
    const/16 v0, 0xa

    if-ne p0, v0, :cond_b

    .line 122
    const-string v0, "PUK2"

    return-object v0

    .line 124
    :cond_b
    const/16 v0, 0xb

    if-ne p0, v0, :cond_c

    .line 125
    const-string v0, "ACL"

    return-object v0

    .line 127
    :cond_c
    const/16 v0, 0xc

    if-ne p0, v0, :cond_d

    .line 128
    const-string v0, "REG"

    return-object v0

    .line 130
    :cond_d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_e

    .line 131
    const-string v0, "ONE"

    return-object v0

    .line 133
    :cond_e
    const/16 v0, 0xe

    if-ne p0, v0, :cond_f

    .line 134
    const-string v0, "SEP"

    return-object v0

    .line 136
    :cond_f
    const/16 v0, 0xf

    if-ne p0, v0, :cond_10

    .line 137
    const-string v0, "POLICY"

    return-object v0

    .line 139
    :cond_10
    const/16 v0, 0x10

    if-ne p0, v0, :cond_11

    .line 140
    const-string v0, "NO_SIM"

    return-object v0

    .line 142
    :cond_11
    const/16 v0, 0x11

    if-ne p0, v0, :cond_12

    .line 143
    const-string v0, "UNAVAIL"

    return-object v0

    .line 145
    :cond_12
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
