.class public Landroid/os/HWParamResultData;
.super Landroid/os/HWParamData;
.source "HWParamResultData.java"


# instance fields
.field private blacklist interfaceType:I

.field private blacklist server:I

.field private blacklist time:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/os/HWParamData;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HWParamResultData;->server:I

    .line 18
    iput v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist getDate()Ljava/util/Date;
    .locals 3

    .line 94
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Landroid/os/HWParamResultData;->time:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public blacklist getInfo()Ljava/lang/String;
    .locals 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 109
    iget v1, p0, Landroid/os/HWParamResultData;->server:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 110
    const-string v1, "N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_0
    if-nez v1, :cond_1

    .line 112
    const-string v1, "D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :cond_1
    if-ne v1, v2, :cond_2

    .line 114
    const-string v1, "C "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_2
    :goto_0
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v1, v3, :cond_3

    .line 118
    const-string v1, "? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 119
    :cond_3
    if-nez v1, :cond_4

    .line 120
    const-string v1, "K "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_4
    if-ne v1, v2, :cond_5

    .line 122
    const-string v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 124
    const-string v1, "I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_6
    :goto_1
    iget-object v1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    const-string v2, " | "

    if-eqz v1, :cond_7

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_7
    iget-object v1, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_8
    iget-object v1, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_9
    iget-object v1, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_a
    iget-object v1, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getInterfaceType()I
    .locals 1

    .line 102
    iget v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    return v0
.end method

.method public blacklist getServer()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/os/HWParamResultData;->server:I

    return v0
.end method

.method public blacklist getTime()J
    .locals 2

    .line 90
    iget-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    return-wide v0
.end method

.method blacklist readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamResultData;->server:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public blacklist setBasicParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "compID"    # Ljava/lang/String;
    .param p2, "compVer"    # Ljava/lang/String;
    .param p3, "compManufacture"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "feature"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public blacklist setLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "logMaps"    # Ljava/lang/String;
    .param p2, "envlogMaps"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public blacklist setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "HWRev"    # Ljava/lang/String;
    .param p2, "IMEI"    # Ljava/lang/String;
    .param p3, "UN"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public blacklist setServer(II)V
    .locals 0
    .param p1, "server"    # I
    .param p2, "interfaceType"    # I

    .line 85
    iput p1, p0, Landroid/os/HWParamResultData;->server:I

    .line 86
    iput p2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 87
    return-void
.end method

.method public blacklist setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 81
    iput-wide p1, p0, Landroid/os/HWParamResultData;->time:J

    .line 82
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    iget-wide v1, p0, Landroid/os/HWParamResultData;->time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Landroid/os/HWParamResultData;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v1    # "DateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 164
    :cond_0
    const-string v1, "?????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v2, p0, Landroid/os/HWParamResultData;->server:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 169
    const-string v2, "N "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    :cond_1
    if-nez v2, :cond_2

    .line 171
    const-string v2, "D "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 172
    :cond_2
    if-ne v2, v3, :cond_3

    .line 173
    const-string v2, "C "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_3
    :goto_1
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v2, v4, :cond_4

    .line 177
    const-string v2, "? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 178
    :cond_4
    if-nez v2, :cond_5

    .line 179
    const-string v2, "K "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 180
    :cond_5
    if-ne v2, v3, :cond_6

    .line 181
    const-string v2, "A "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 182
    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 183
    const-string v2, "I "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_7
    :goto_2
    iget-object v2, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    const-string v3, " | "

    if-eqz v2, :cond_8

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v2, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_8
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_9
    iget-object v2, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    const-string v4, " "

    if-eqz v2, :cond_a

    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v2, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_a
    iget-object v2, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 202
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_b
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_c
    iget-object v2, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v2, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " :"

    if-nez v2, :cond_e

    .line 218
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v2, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 224
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v1, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 43
    iget-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Landroid/os/HWParamResultData;->server:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return-void
.end method
