.class public Lcom/android/server/ReactiveATCmd;
.super Ljava/lang/Object;
.source "ReactiveATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final blacklist AT_COMMAND_REACTIVE:Ljava/lang/String; = "REACTIVE"

.field private static final blacklist AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG (FAILED CONNECTION)"

.field private static final blacklist AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final blacklist AT_RESPONSE_NA:Ljava/lang/String; = "NA"

.field private static final blacklist AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final blacklist AT_RESPONSE_STATUS_LOCK:Ljava/lang/String; = "LOCK"

.field private static final blacklist AT_RESPONSE_STATUS_LOCK_1:Ljava/lang/String; = "LOCK_1"

.field private static final blacklist AT_RESPONSE_STATUS_LOCK_2:Ljava/lang/String; = "LOCK_2"

.field private static final blacklist AT_RESPONSE_STATUS_LOCK_3:Ljava/lang/String; = "LOCK_3"

.field private static final blacklist AT_RESPONSE_STATUS_LOCK_4:Ljava/lang/String; = "LOCK_4"

.field private static final blacklist AT_RESPONSE_STATUS_LOCK_5:Ljava/lang/String; = "LOCK_5"

.field private static final blacklist AT_RESPONSE_STATUS_TRIGGERED:Ljava/lang/String; = "TRIGGERED"

.field private static final blacklist AT_RESPONSE_STATUS_UNLOCK:Ljava/lang/String; = "UNLOCK"

.field private static final blacklist LOCK_STATE_1:I = 0x3

.field private static final blacklist LOCK_STATE_2:I = 0x4

.field private static final blacklist LOCK_STATE_3:I = 0x5

.field private static final blacklist LOCK_STATE_4:I = 0x6

.field private static final blacklist LOCK_STATE_5:I = 0x7

.field private static final blacklist SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final blacklist SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final blacklist SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final blacklist SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ReactiveATCmd"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/ReactiveATCmd;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 67
    return-void
.end method

.method private blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    .line 253
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 257
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public blacklist getCmd()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "REACTIVE"

    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "cmd"    # Ljava/lang/String;

    .line 76
    const-string v0, ""

    .line 77
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "params":[Ljava/lang/String;
    const-string v2, "1,0,0"

    const-string v3, "2,0,"

    const-string v4, "2,1,"

    const-string v5, "2,2,"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "supportedParams":[Ljava/lang/String;
    const-string v3, "NG (INVALID_PARAM)"

    if-nez v1, :cond_0

    .line 87
    return-object v3

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const-string v5, "NG (FAILED CONNECTION)"

    if-nez v4, :cond_1

    .line 90
    return-object v5

    .line 92
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    return-object v5

    .line 96
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 99
    aget-object v4, v2, v5

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ")"

    const-string v7, "NG("

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v4, :cond_f

    .line 100
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getRawServiceValueForAtCommand()I

    move-result v4

    .line 104
    .local v4, "appliedSolution":I
    packed-switch v4, :pswitch_data_0

    .line 164
    iget-object v8, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    goto/16 :goto_0

    .line 138
    :pswitch_0
    iget-object v10, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v10, v9}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v10

    .line 139
    .local v10, "frp_flag":I
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11, v5}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v5

    .line 141
    .local v5, "rl_flag":I
    if-ne v5, v9, :cond_3

    .line 142
    move v8, v5

    .local v8, "flag":I
    goto/16 :goto_1

    .line 143
    .end local v8    # "flag":I
    :cond_3
    if-ne v10, v9, :cond_4

    .line 144
    move v8, v10

    .restart local v8    # "flag":I
    goto/16 :goto_1

    .line 145
    .end local v8    # "flag":I
    :cond_4
    if-nez v10, :cond_5

    if-nez v5, :cond_5

    .line 147
    const/4 v8, 0x0

    .restart local v8    # "flag":I
    goto/16 :goto_1

    .line 148
    .end local v8    # "flag":I
    :cond_5
    if-ne v10, v8, :cond_6

    if-nez v5, :cond_6

    .line 150
    const/4 v8, 0x3

    .restart local v8    # "flag":I
    goto :goto_1

    .line 151
    .end local v8    # "flag":I
    :cond_6
    if-nez v10, :cond_7

    if-ne v5, v8, :cond_7

    .line 153
    const/4 v8, 0x5

    .restart local v8    # "flag":I
    goto :goto_1

    .line 154
    .end local v8    # "flag":I
    :cond_7
    if-ne v10, v8, :cond_8

    if-ne v5, v8, :cond_8

    .line 156
    const/4 v8, 0x7

    .restart local v8    # "flag":I
    goto :goto_1

    .line 158
    .end local v8    # "flag":I
    :cond_8
    move v8, v5

    .line 159
    .restart local v8    # "flag":I
    goto :goto_1

    .line 113
    .end local v5    # "rl_flag":I
    .end local v8    # "flag":I
    .end local v10    # "frp_flag":I
    :pswitch_1
    iget-object v10, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v10, v9}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v10

    .line 114
    .restart local v10    # "frp_flag":I
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11, v5}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v5

    .line 116
    .restart local v5    # "rl_flag":I
    if-ne v5, v9, :cond_9

    .line 117
    move v8, v5

    .restart local v8    # "flag":I
    goto :goto_1

    .line 118
    .end local v8    # "flag":I
    :cond_9
    if-ne v10, v9, :cond_a

    .line 119
    move v8, v10

    .restart local v8    # "flag":I
    goto :goto_1

    .line 120
    .end local v8    # "flag":I
    :cond_a
    if-nez v10, :cond_b

    if-nez v5, :cond_b

    .line 122
    const/4 v8, 0x0

    .restart local v8    # "flag":I
    goto :goto_1

    .line 123
    .end local v8    # "flag":I
    :cond_b
    if-ne v10, v8, :cond_c

    if-nez v5, :cond_c

    .line 125
    const/4 v8, 0x3

    .restart local v8    # "flag":I
    goto :goto_1

    .line 126
    .end local v8    # "flag":I
    :cond_c
    if-nez v10, :cond_d

    if-ne v5, v8, :cond_d

    .line 128
    const/4 v8, 0x4

    .restart local v8    # "flag":I
    goto :goto_1

    .line 129
    .end local v8    # "flag":I
    :cond_d
    if-ne v10, v8, :cond_e

    if-ne v5, v8, :cond_e

    .line 131
    const/4 v8, 0x6

    .restart local v8    # "flag":I
    goto :goto_1

    .line 133
    .end local v8    # "flag":I
    :cond_e
    move v8, v5

    .line 134
    .restart local v8    # "flag":I
    goto :goto_1

    .line 107
    .end local v5    # "rl_flag":I
    .end local v8    # "flag":I
    .end local v10    # "frp_flag":I
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v5, v9}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v5

    .line 108
    .local v5, "frp_flag":I
    move v8, v5

    .line 109
    .restart local v8    # "flag":I
    goto :goto_1

    .line 164
    .end local v5    # "frp_flag":I
    .end local v8    # "flag":I
    :goto_0
    invoke-virtual {v8, v5}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v5

    .line 165
    .local v5, "rl_flag":I
    move v8, v5

    .line 169
    .end local v5    # "rl_flag":I
    .restart local v8    # "flag":I
    :goto_1
    packed-switch v8, :pswitch_data_1

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 199
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LOCK_5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 200
    goto/16 :goto_3

    .line 195
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LOCK_4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 196
    goto/16 :goto_3

    .line 191
    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LOCK_3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 192
    goto/16 :goto_3

    .line 187
    :pswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LOCK_2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 188
    goto/16 :goto_3

    .line 183
    :pswitch_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LOCK_1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 184
    goto :goto_3

    .line 179
    :pswitch_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TRIGGERED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 180
    goto :goto_3

    .line 175
    :pswitch_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LOCK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 176
    goto :goto_3

    .line 171
    :pswitch_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UNLOCK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 172
    goto :goto_3

    .line 203
    :goto_2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 206
    .end local v4    # "appliedSolution":I
    .end local v8    # "flag":I
    :goto_3
    goto/16 :goto_7

    .line 208
    :cond_f
    aget-object v4, v2, v8

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 209
    aget-object v4, v1, v9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 210
    .local v4, "data":[B
    iget-object v5, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionAccept([B)[B

    move-result-object v5

    .line 212
    .local v5, "response":[B
    if-eqz v5, :cond_10

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_4

    .line 215
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v8}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 216
    .end local v4    # "data":[B
    .end local v5    # "response":[B
    :goto_4
    goto/16 :goto_7

    .line 218
    :cond_11
    aget-object v4, v2, v9

    aget-object v8, v2, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "OK"

    if-eqz v4, :cond_13

    .line 219
    :try_start_2
    aget-object v4, v1, v9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 220
    .restart local v4    # "data":[B
    iget-object v5, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionComplete([B)I

    move-result v5

    .line 222
    .local v5, "ret":I
    if-nez v5, :cond_12

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_5

    .line 225
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 226
    .end local v4    # "data":[B
    .end local v5    # "ret":I
    :goto_5
    goto/16 :goto_7

    .line 228
    :cond_13
    const/4 v4, 0x3

    aget-object v10, v2, v4

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 229
    aget-object v4, v1, v9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 230
    .restart local v4    # "data":[B
    iget-object v9, p0, Lcom/android/server/ReactiveATCmd;->mRSM:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v9, v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionComplete([B)I

    move-result v9

    .line 232
    .local v9, "ret":I
    if-nez v9, :cond_14

    .line 233
    iget-object v6, p0, Lcom/android/server/ReactiveATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "secure_frp_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    const-string v5, "ReactiveATCmd"

    const-string v6, "Secure FRP mode is disabled"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_6

    .line 237
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 238
    .end local v4    # "data":[B
    .end local v9    # "ret":I
    :goto_6
    goto :goto_7

    .line 239
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v3

    .line 243
    :goto_7
    goto :goto_8

    .line 240
    :catch_0
    move-exception v4

    .line 241
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
