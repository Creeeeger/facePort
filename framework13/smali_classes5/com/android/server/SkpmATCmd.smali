.class public Lcom/android/server/SkpmATCmd;
.super Ljava/lang/Object;
.source "SkpmATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final blacklist AT_COMMAND_SOCFIOTK:Ljava/lang/String; = "SOCFIOTK"

.field private static final blacklist AT_MAIN_INDEX:I = 0x0

.field private static final blacklist AT_RESPNOSE_FAILED:Ljava/lang/String; = "NG_FAIL"

.field private static final blacklist AT_RESPNOSE_NO_KEY:Ljava/lang/String; = "NG_NONE"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_FAIL(INVALID_PARAM)"

.field private static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final blacklist AT_RESPONSE_WRONG_FORMAT:Ljava/lang/String; = "NG_FAIL(WRONG FORMAT)"

.field private static final blacklist INJECTION_TYPE_FACTORY:B = 0x1t

.field private static final blacklist KEY_NOT_EXISTED:I = -0x14

.field private static final blacklist KEY_NOT_USABLE:I = -0x15

.field private static final blacklist KEY_TYPE_ECC_P256:B = 0x1t

.field private static final blacklist NO_ERROR:I = 0x0

.field private static final blacklist SAMSUNG_OCF_KEY_READ_UID:I = 0x1

.field private static final blacklist SAMSUNG_OCF_KEY_VERIFY:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SkpmATCmd"

.field private static final blacklist UID_BUF_SIZE:I = 0x24


# instance fields
.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSkpmService:Lcom/skms/android/agent/ISkpmService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSkpmService(Lcom/android/server/SkpmATCmd;)Lcom/skms/android/agent/ISkpmService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSkpmService(Lcom/android/server/SkpmATCmd;Lcom/skms/android/agent/ISkpmService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    .line 55
    iput-object v0, p0, Lcom/android/server/SkpmATCmd;->mConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object p1, p0, Lcom/android/server/SkpmATCmd;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private blacklist bindSkpmService()Z
    .locals 8

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "result":Z
    const-string v1, "SkpmATCmd"

    const-string v2, "Bind to SKMS Agent"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.skms.android.agent.SkpmService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.skms.android.agent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/android/server/SkpmATCmd;->mConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/android/server/SkpmATCmd$1;

    invoke-direct {v1, p0}, Lcom/android/server/SkpmATCmd$1;-><init>(Lcom/android/server/SkpmATCmd;)V

    iput-object v1, p0, Lcom/android/server/SkpmATCmd;->mConnection:Landroid/content/ServiceConnection;

    .line 87
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 88
    .local v3, "token":J
    iget-object v1, p0, Lcom/android/server/SkpmATCmd;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SkpmATCmd;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 89
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    return v0
.end method

.method private blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    .line 207
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 212
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 211
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private blacklist unBindSkpmService()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SkpmATCmd;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "SkpmATCmd"

    const-string/jumbo v1, "unbindService was called"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/SkpmATCmd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SkpmATCmd;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    .line 98
    iput-object v0, p0, Lcom/android/server/SkpmATCmd;->mConnection:Landroid/content/ServiceConnection;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getCmd()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "SOCFIOTK"

    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "cmd"    # Ljava/lang/String;

    .line 109
    move-object/from16 v1, p0

    const-string v2, ","

    const/4 v3, 0x0

    .line 110
    .local v3, "ret":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 112
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SkpmATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "params":[Ljava/lang/String;
    const-string v6, "NG_FAIL(INVALID_PARAM)"

    if-nez v5, :cond_0

    .line 115
    return-object v6

    .line 118
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SkpmATCmd;->bindSkpmService()Z

    move-result v0

    const-string v7, "NG_FAIL"

    const-string v8, "SkpmATCmd"

    if-nez v0, :cond_1

    .line 119
    const-string v0, "bindSkpmService is false"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v7

    .line 122
    :cond_1
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_0
    const/16 v0, 0x1e

    if-ge v9, v0, :cond_3

    .line 123
    iget-object v0, v1, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    if-nez v0, :cond_2

    .line 124
    const-string v0, "Wait for binding SkpmService"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-wide/16 v10, 0x64

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    goto :goto_2

    .line 127
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 122
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 131
    :cond_2
    const-string v0, "Success to bind SkpmService"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v9    # "i":I
    :cond_3
    iget-object v0, v1, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    if-nez v0, :cond_4

    .line 138
    const-string v0, "failed to bind SkpmService after waiting"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v7

    .line 142
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    aget-object v8, v5, v0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    aget-object v8, v5, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v9, " "

    const-string v11, "NG_NONE"

    const-string v12, "OK"

    const-string v14, "OCF"

    const/4 v15, 0x1

    packed-switch v8, :pswitch_data_0

    .line 188
    goto/16 :goto_6

    .line 163
    :pswitch_0
    const/16 v8, 0x24

    :try_start_2
    new-array v10, v8, [B

    .line 164
    .local v10, "uid":[B
    iget-object v13, v1, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    invoke-interface {v13, v15, v15, v14, v10}, Lcom/skms/android/agent/ISkpmService;->SkpmReadInjectedKeyUID(BBLjava/lang/String;[B)I

    move-result v13

    move v3, v13

    .line 165
    if-ne v3, v8, :cond_6

    .line 166
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v10, v0, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v7

    .line 167
    .local v0, "strUid":Ljava/lang/String;
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_5

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_5

    const/16 v7, 0x12

    .line 168
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_5

    const/16 v7, 0x17

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_5

    .line 169
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 173
    :cond_5
    const-string v7, "NG_FAIL(WRONG FORMAT)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .end local v0    # "strUid":Ljava/lang/String;
    :goto_3
    goto :goto_7

    :cond_6
    const/16 v0, -0x14

    if-eq v3, v0, :cond_8

    const/16 v0, -0x15

    if-ne v3, v0, :cond_7

    goto :goto_4

    .line 180
    :cond_7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    goto :goto_7

    .line 178
    :cond_8
    :goto_4
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 148
    .end local v10    # "uid":[B
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/SkpmATCmd;->mSkpmService:Lcom/skms/android/agent/ISkpmService;

    invoke-interface {v0, v15, v15, v14}, Lcom/skms/android/agent/ISkpmService;->SkpmServiceInjectedKeyVerification(BBLjava/lang/String;)I

    move-result v0

    move v3, v0

    .line 149
    if-nez v3, :cond_9

    .line 150
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 151
    :cond_9
    const/16 v0, -0x14

    if-eq v3, v0, :cond_b

    const/16 v0, -0x15

    if-ne v3, v0, :cond_a

    goto :goto_5

    .line 154
    :cond_a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    goto :goto_7

    .line 152
    :cond_b
    :goto_5
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 188
    :goto_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    :goto_7
    goto :goto_8

    .line 191
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SkpmATCmd;->unBindSkpmService()V

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
