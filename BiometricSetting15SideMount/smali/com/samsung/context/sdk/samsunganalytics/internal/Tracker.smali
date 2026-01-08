.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final application:Landroid/app/Application;

.field public final configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public final deleteApiCallChecker:Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

.field public final mContext:Landroid/content/Context;

.field public mStatus:I


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->deleteApiCallChecker:Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    .line 33
    .line 34
    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;

    .line 39
    .line 40
    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Landroid/app/Application;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "Tracker"

    .line 50
    .line 51
    const-string p1, "Tracker start:6.05.068"

    .line 52
    .line 53
    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Z
    .locals 4

    .line 1
    const-string v0, "Tracker is not initialized, status : "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->init()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne v1, v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->deleteApiCallChecker:Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;->isNotOverLimit()Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move v3, v1

    .line 47
    :cond_1
    monitor-exit p0

    .line 48
    :goto_0
    return v3

    .line 49
    :goto_1
    monitor-exit p0

    .line 50
    throw v0
.end method


# virtual methods
.method public final init()I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_14

    .line 7
    .line 8
    iget-object v3, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    sget v4, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, -0x1

    .line 20
    if-eq v4, v7, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getDMAVersion(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const v4, 0x202fbf00

    .line 28
    .line 29
    .line 30
    if-lt v0, v4, :cond_2

    .line 31
    .line 32
    const v4, 0x23c34600

    .line 33
    .line 34
    .line 35
    if-lt v0, v4, :cond_1

    .line 36
    .line 37
    move v0, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v6

    .line 40
    :goto_0
    sput v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sput v7, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 44
    .line 45
    :goto_1
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 56
    .line 57
    const-string v8, "dom"

    .line 58
    .line 59
    const-string v9, ""

    .line 60
    .line 61
    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v4, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->setDomain(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 69
    .line 70
    const-string v8, "uri"

    .line 71
    .line 72
    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v4, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 80
    .line 81
    const-string v8, "bat-uri"

    .line 82
    .line 83
    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->isPolicyExpired(Landroid/content/Context;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    .line 99
    .line 100
    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v8, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getDeviceInfo(Landroid/content/Context;)Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    new-instance v9, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    .line 111
    .line 112
    invoke-direct {v9, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v3, v4, v8, v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->updatePolicy(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    const-string v4, "user"

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/os/UserManager;

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_4

    .line 136
    .line 137
    const-string v0, "current user is locked"

    .line 138
    .line 139
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iput v4, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 143
    .line 144
    return v4

    .line 145
    :cond_4
    iget-object v8, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    const-string v10, "enable_device"

    .line 152
    .line 153
    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_8

    .line 158
    .line 159
    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    .line 160
    .line 161
    const-string v11, "getBoolean"

    .line 162
    .line 163
    const/4 v12, 0x0

    .line 164
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v13, "getInstance"

    .line 169
    .line 170
    new-array v14, v2, [Ljava/lang/Class;

    .line 171
    .line 172
    aput-object v12, v14, v4

    .line 173
    .line 174
    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    invoke-virtual {v13, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    new-array v14, v2, [Ljava/lang/Class;

    .line 183
    .line 184
    const-class v15, Ljava/lang/String;

    .line 185
    .line 186
    aput-object v15, v14, v4

    .line 187
    .line 188
    invoke-virtual {v0, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 193
    .line 194
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    invoke-virtual {v0, v13, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Ljava/lang/Boolean;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 205
    .line 206
    .line 207
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    goto :goto_5

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_1
    const-string v11, "content://com.sec.android.log.diagmonagent.sa/check/diagnostic"

    .line 211
    .line 212
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v8, v11, v12, v12, v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    if-eqz v8, :cond_6

    .line 225
    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    .line 228
    .line 229
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 230
    .line 231
    .line 232
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    if-ne v2, v11, :cond_5

    .line 234
    .line 235
    move v11, v2

    .line 236
    goto :goto_2

    .line 237
    :cond_5
    move v11, v4

    .line 238
    :goto_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :catch_1
    move v11, v4

    .line 243
    goto :goto_3

    .line 244
    :cond_6
    move v0, v4

    .line 245
    goto :goto_5

    .line 246
    :catch_2
    :goto_3
    const-string v8, "DMA is not supported"

    .line 247
    .line 248
    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v12, "[Validation] "

    .line 254
    .line 255
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v12, " "

    .line 270
    .line 271
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const-string v8, "SamsungAnalytics605068"

    .line 286
    .line 287
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :goto_4
    move v0, v11

    .line 291
    :goto_5
    if-nez v0, :cond_7

    .line 292
    .line 293
    const-string v8, "feature is not supported"

    .line 294
    .line 295
    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    invoke-interface {v8, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_7
    const-string v8, "cf feature is supported"

    .line 311
    .line 312
    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    invoke-interface {v8, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_8
    if-ne v0, v2, :cond_9

    .line 328
    .line 329
    move v0, v2

    .line 330
    goto :goto_6

    .line 331
    :cond_9
    move v0, v4

    .line 332
    :goto_6
    if-nez v0, :cond_a

    .line 333
    .line 334
    const-string v0, "Device is not enabled for logging"

    .line 335
    .line 336
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iput v7, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 340
    .line 341
    return v7

    .line 342
    :cond_a
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 343
    .line 344
    if-ne v7, v0, :cond_b

    .line 345
    .line 346
    const-string v0, "SenderType is None"

    .line 347
    .line 348
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iput v7, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 352
    .line 353
    return v7

    .line 354
    :cond_b
    if-ne v0, v6, :cond_e

    .line 355
    .line 356
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getServicePkgInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-eqz v0, :cond_d

    .line 363
    .line 364
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 365
    .line 366
    if-eqz v0, :cond_d

    .line 367
    .line 368
    array-length v6, v0

    .line 369
    move v8, v4

    .line 370
    :goto_7
    if-ge v8, v6, :cond_d

    .line 371
    .line 372
    aget-object v9, v0, v8

    .line 373
    .line 374
    const-string v10, "com.sec.spp.permission.TOKEN"

    .line 375
    .line 376
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v9

    .line 380
    if-eqz v9, :cond_c

    .line 381
    .line 382
    move v0, v2

    .line 383
    goto :goto_8

    .line 384
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_d
    move v0, v4

    .line 388
    :goto_8
    if-nez v0, :cond_e

    .line 389
    .line 390
    const-string v0, "SamsungAnalytics2 need to define \'com.sec.spp.permission.TOKEN_XXXX\' permission in AndroidManifest"

    .line 391
    .line 392
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iput v7, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 396
    .line 397
    return v7

    .line 398
    :cond_e
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 399
    .line 400
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_14

    .line 405
    .line 406
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    const v6, 0x2a51bd80

    .line 409
    .line 410
    .line 411
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getDMAVersion(Landroid/content/Context;)I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-gt v6, v0, :cond_f

    .line 416
    .line 417
    move v0, v2

    .line 418
    goto :goto_9

    .line 419
    :cond_f
    move v0, v4

    .line 420
    :goto_9
    if-nez v0, :cond_10

    .line 421
    .line 422
    iget-object v0, v3, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->isAgreement()Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_14

    .line 429
    .line 430
    :cond_10
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 431
    .line 432
    if-ne v0, v5, :cond_14

    .line 433
    .line 434
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 435
    .line 436
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    iget-object v6, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 441
    .line 442
    invoke-static {v6}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v6

    .line 446
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 447
    .line 448
    .line 449
    move-result v7

    .line 450
    const-string v8, "None"

    .line 451
    .line 452
    if-eqz v7, :cond_11

    .line 453
    .line 454
    move-object v6, v8

    .line 455
    :cond_11
    const-string v7, "sendCommonSuccess"

    .line 456
    .line 457
    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    const-string v7, "appVersion"

    .line 462
    .line 463
    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    const-wide/16 v9, 0x0

    .line 468
    .line 469
    const-string v11, "sendCommonTime"

    .line 470
    .line 471
    invoke-interface {v0, v11, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 472
    .line 473
    .line 474
    move-result-wide v9

    .line 475
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 476
    .line 477
    .line 478
    move-result-object v12

    .line 479
    new-instance v13, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    const-string v14, "AppVersion = "

    .line 482
    .line 483
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v14, ", prefAppVersion = "

    .line 490
    .line 491
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v14, ", beforeSendCommonTime = "

    .line 498
    .line 499
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    const-string v14, ", success = "

    .line 506
    .line 507
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v13

    .line 517
    invoke-static {v13}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    if-eqz v8, :cond_13

    .line 525
    .line 526
    if-eqz v4, :cond_12

    .line 527
    .line 528
    const/4 v8, 0x7

    .line 529
    invoke-static {v8, v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    .line 530
    .line 531
    .line 532
    move-result v8

    .line 533
    if-nez v8, :cond_13

    .line 534
    .line 535
    :cond_12
    if-nez v4, :cond_14

    .line 536
    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 538
    .line 539
    .line 540
    move-result-wide v12

    .line 541
    const/4 v4, 0x6

    .line 542
    int-to-long v14, v4

    .line 543
    const-wide/32 v16, 0x36ee80

    .line 544
    .line 545
    .line 546
    mul-long v14, v14, v16

    .line 547
    .line 548
    add-long/2addr v14, v9

    .line 549
    cmp-long v4, v12, v14

    .line 550
    .line 551
    if-lez v4, :cond_14

    .line 552
    .line 553
    :cond_13
    const-string v4, "send app common"

    .line 554
    .line 555
    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 567
    .line 568
    .line 569
    move-result-wide v6

    .line 570
    invoke-interface {v0, v11, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 575
    .line 576
    .line 577
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    .line 578
    .line 579
    invoke-static {v0, v5, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    .line 584
    .line 585
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendCommon()V

    .line 586
    .line 587
    .line 588
    :cond_14
    iput v2, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    .line 589
    .line 590
    return v2
.end method
