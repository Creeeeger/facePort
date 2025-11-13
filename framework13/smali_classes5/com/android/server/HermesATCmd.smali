.class public Lcom/android/server/HermesATCmd;
.super Ljava/lang/Object;
.source "HermesATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final blacklist AT_COMMAND_HERMES:Ljava/lang/String; = "ISOSECHW"

.field private static final blacklist AT_MAIN_INDEX:I = 0x0

.field private static final blacklist AT_MAIN_INDEX_OPERATION:I = 0x0

.field private static final blacklist AT_MAIN_INDEX_READ_DATA:I = 0x1

.field private static final blacklist AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field private static final blacklist AT_MAIN_OPERATION:I = 0x0

.field private static final blacklist AT_MAIN_READ_DATA:I = 0xa

.field private static final blacklist AT_MAIN_WRITE_DATA:I = 0x14

.field private static final blacklist AT_MID_INDEX:I = 0x1

.field private static final blacklist AT_MINOR_INDEX:I = 0x2

.field private static final blacklist AT_RESPONSE_FAILED:Ljava/lang/String; = "NG"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG(INVALID_PARAM)"

.field private static final blacklist AT_RESPONSE_NONE:Ljava/lang/String; = "NONE"

.field private static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final blacklist NOT_PROVISIONED:I = 0x2710

.field private static final blacklist NO_ERROR:I = 0x0

.field private static final blacklist SAMSUNG_HERMES_GET_SECUREHW_INFO:I = 0xa

.field private static final blacklist SAMSUNG_HERMES_PROVISIONING:I = 0x1

.field private static final blacklist SAMSUNG_HERMES_SELFTEST:I = 0x0

.field private static final blacklist SAMSUNG_HERMES_UPDATE_CRYPTO_FW:I = 0x2

.field private static final blacklist SAMSUNG_HERMES_VERIFY_PROVISONING:I = 0xb

.field private static final blacklist TAG:Ljava/lang/String; = "HERMES#ATCmd"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHermesServiceManager:Lcom/samsung/android/service/HermesService/HermesServiceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/HermesATCmd;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private blacklist bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/server/HermesATCmd;->mHermesServiceManager:Lcom/samsung/android/service/HermesService/HermesServiceManager;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "HERMES#ATCmd"

    const-string v1, "bindHermesServiceManager() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lcom/samsung/android/service/HermesService/HermesServiceManager;

    iget-object v1, p0, Lcom/android/server/HermesATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/HermesService/HermesServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/HermesATCmd;->mHermesServiceManager:Lcom/samsung/android/service/HermesService/HermesServiceManager;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/HermesATCmd;->mHermesServiceManager:Lcom/samsung/android/service/HermesService/HermesServiceManager;

    return-object v0
.end method

.method private blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .line 148
    .local v0, "result":[Ljava/lang/String;
    :try_start_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 152
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public blacklist getCmd()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "ISOSECHW"

    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 69
    const-string v0, "ISOSECHW ProcessCmd ["

    const/4 v1, 0x0

    .line 71
    .local v1, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/HermesATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "params":[Ljava/lang/String;
    const-string v3, "NG(INVALID_PARAM)"

    const-string v4, "HERMES#ATCmd"

    if-nez v2, :cond_0

    .line 74
    const-string v0, "ISOSECHW processCmd wrong param."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v3

    .line 78
    :cond_0
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] start"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "NG"

    const-string v8, "OK"

    sparse-switch v6, :sswitch_data_0

    .line 128
    goto/16 :goto_0

    .line 118
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesVerifyProvisioning()I

    move-result v3

    move v1, v3

    .line 119
    if-nez v1, :cond_1

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 121
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x2710

    if-ne v1, v3, :cond_2

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "NONE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 124
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "NG,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    goto/16 :goto_1

    .line 110
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesGetSecureHWInfo()[B

    move-result-object v3

    .line 111
    .local v3, "chipinfo":[B
    if-eqz v3, :cond_3

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto/16 :goto_1

    .line 114
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 115
    goto/16 :goto_1

    .line 102
    .end local v3    # "chipinfo":[B
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesUpdateCryptoFW()[B

    move-result-object v3

    .line 103
    .local v3, "resultinfo":[B
    if-eqz v3, :cond_4

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto/16 :goto_1

    .line 106
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 107
    goto/16 :goto_1

    .line 94
    .end local v3    # "resultinfo":[B
    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesProvisioning()I

    move-result v3

    move v1, v3

    .line 95
    if-nez v1, :cond_5

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto :goto_1

    .line 98
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    goto :goto_1

    .line 86
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesSelftest()[B

    move-result-object v3

    .line 87
    .local v3, "stinfo":[B
    if-nez v3, :cond_6

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 90
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NG_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 91
    goto :goto_1

    .line 128
    .end local v3    # "stinfo":[B
    :goto_0
    const-string v6, "ISOSECHW ProcessCmd wrong command."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 132
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method
