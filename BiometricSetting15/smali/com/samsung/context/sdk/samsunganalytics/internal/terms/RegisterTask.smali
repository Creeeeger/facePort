.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# instance fields
.field public final callback:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;

.field public conn:Ljavax/net/ssl/HttpsURLConnection;

.field public final deviceID:Ljava/lang/String;

.field public final timestamp:J

.field public final trid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterLogSender$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->trid:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->deviceID:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->timestamp:J

    .line 12
    .line 13
    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->callback:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final cleanUp(Ljava/io/BufferedReader;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 12
    .line 13
    .line 14
    :cond_1
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p2, "[Register Client] "

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_2
    return-void
.end method

.method public final makeRequestBody()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "tid"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->trid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "lid"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->deviceID:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "ts"

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->timestamp:J

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "failed to make body"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public final onFinish()I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->callback:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "Fail : "

    .line 6
    .line 7
    const-string v3, "Success : "

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 11
    .line 12
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/16 v6, 0x190

    .line 17
    .line 18
    if-lt v5, v6, :cond_0

    .line 19
    .line 20
    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 21
    .line 22
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    move-object v6, v4

    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :catch_0
    move-object v6, v4

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :goto_0
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    .line 41
    .line 42
    new-instance v8, Ljava/io/InputStreamReader;

    .line 43
    .line 44
    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 48
    .line 49
    .line 50
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v8, "rc"

    .line 60
    .line 61
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    const-string v8, "1000"

    .line 66
    .line 67
    const/16 v9, 0xc8

    .line 68
    .line 69
    const-string v10, " "

    .line 70
    .line 71
    if-ne v5, v9, :cond_1

    .line 72
    .line 73
    :try_start_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    if-eqz v11, :cond_1

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object v4, v7

    .line 103
    goto :goto_6

    .line 104
    :catch_1
    move-object v4, v7

    .line 105
    goto :goto_3

    .line 106
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    if-nez v0, :cond_2

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    if-ne v5, v9, :cond_3

    .line 131
    .line 132
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;->onSuccess()V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {v0, v4, v1, v1}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;->onFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-virtual {p0, v7, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->cleanUp(Ljava/io/BufferedReader;Ljava/io/InputStream;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :catchall_2
    move-exception v0

    .line 150
    goto :goto_6

    .line 151
    :catch_2
    :goto_3
    if-nez v0, :cond_4

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_4
    :try_start_4
    invoke-virtual {v0, v1, v1, v1}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;->onFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 155
    .line 156
    .line 157
    :goto_4
    invoke-virtual {p0, v4, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->cleanUp(Ljava/io/BufferedReader;Ljava/io/InputStream;)V

    .line 158
    .line 159
    .line 160
    :goto_5
    const/4 p0, 0x0

    .line 161
    return p0

    .line 162
    :goto_6
    invoke-virtual {p0, v4, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->cleanUp(Ljava/io/BufferedReader;Ljava/io/InputStream;)V

    .line 163
    .line 164
    .line 165
    throw v0
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->trid:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "tid"

    .line 26
    .line 27
    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "ts"

    .line 32
    .line 33
    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "hc"

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/ClientUtil;->SALT:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/AuthUtil;->sha256(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/net/URL;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->makeRequestBody()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    const-string p0, "[Register Client] body is empty"

    .line 90
    .line 91
    const-string v0, "SamsungAnalytics605068"

    .line 92
    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->upload(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v1, "[Register Client] "

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    return-void
.end method

.method public final upload(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 8
    .line 9
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 21
    .line 22
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getMethod()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 32
    .line 33
    const/16 v0, 0xbb8

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 39
    .line 40
    const-string v0, "Content-Type"

    .line 41
    .line 42
    const-string v1, "application/json"

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {p1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 75
    .line 76
    .line 77
    return-void
.end method
