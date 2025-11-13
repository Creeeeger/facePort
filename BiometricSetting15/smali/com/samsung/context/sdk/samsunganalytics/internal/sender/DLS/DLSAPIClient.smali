.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# instance fields
.field public final asyncTaskCallback:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;

.field public conn:Ljavax/net/ssl/HttpsURLConnection;

.field public final isBatch:Ljava/lang/Boolean;

.field public final logType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

.field public final logs:Ljava/util/Queue;

.field public final simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

.field public final trid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Ljava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 11
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logs:Ljava/util/Queue;

    .line 12
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->trid:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->asyncTaskCallback:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;

    .line 14
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    .line 15
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Ljava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    .line 4
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 5
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->trid:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->asyncTaskCallback:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;

    .line 7
    iget-object p1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 8
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method


# virtual methods
.method public final callback(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->asyncTaskCallback:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v1, 0xc8

    .line 7
    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    const-string p1, "1000"

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const-string p2, ""

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logs:Ljava/util/Queue;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logs:Ljava/util/Queue;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-wide v2, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->timestamp:J

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;->onFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 79
    .line 80
    iget-wide v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->timestamp:J

    .line 81
    .line 82
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskCallback;->onFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public final cleanUp$1(Ljava/io/BufferedReader;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

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
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "[DLS Client] "

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_2
    return-void
.end method

.method public final getBody()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logs:Ljava/util/Queue;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 39
    .line 40
    const-string v2, "\u000e"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->simpleLog:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    .line 59
    .line 60
    return-object p0
.end method

.method public final onFinish()I
    .locals 8

    .line 1
    const-string v0, "[DLS Client] "

    .line 2
    .line 3
    const-string v1, "[DLS Sender] send result fail : "

    .line 4
    .line 5
    const-string v2, "[DLS Sender] send result success : "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 9
    .line 10
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    new-instance v5, Ljava/io/BufferedReader;

    .line 15
    .line 16
    new-instance v6, Ljava/io/InputStreamReader;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 19
    .line 20
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v6, "rc"

    .line 40
    .line 41
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    const/16 v6, 0xc8

    .line 46
    .line 47
    const-string v7, " "

    .line 48
    .line 49
    if-ne v4, v6, :cond_0

    .line 50
    .line 51
    :try_start_2
    const-string v6, "1000"

    .line 52
    .line 53
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    move-object v3, v5

    .line 84
    goto :goto_3

    .line 85
    :catch_0
    move-exception v1

    .line 86
    move-object v3, v5

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 v1, -0x7

    .line 110
    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->callback(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->cleanUp$1(Ljava/io/BufferedReader;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_1
    move-exception v0

    .line 118
    goto :goto_3

    .line 119
    :catch_1
    move-exception v1

    .line 120
    :goto_1
    :try_start_3
    const-string v2, "[DLS Client] Send fail."

    .line 121
    .line 122
    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogE(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v0, ""

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0, v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->callback(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->cleanUp$1(Ljava/io/BufferedReader;)V

    .line 151
    .line 152
    .line 153
    const/16 v1, -0x29

    .line 154
    .line 155
    :goto_2
    return v1

    .line 156
    :goto_3
    invoke-virtual {p0, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->cleanUp$1(Ljava/io/BufferedReader;)V

    .line 157
    .line 158
    .line 159
    throw v0
.end method

.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->trid:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "[DLS Client] Send to DLS : "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_BUFFERED_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "ts"

    .line 39
    .line 40
    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "type"

    .line 45
    .line 46
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->logType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 47
    .line 48
    invoke-virtual {v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "tid"

    .line 57
    .line 58
    invoke-virtual {v5, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v6, "hc"

    .line 63
    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/ClientUtil;->SALT:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/AuthUtil;->sha256(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v5, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    .line 90
    .line 91
    new-instance v0, Ljava/net/URL;

    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->getBody()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_1

    .line 113
    .line 114
    const-string p0, "[DLS Client] body is empty"

    .line 115
    .line 116
    const-string v0, "SamsungAnalytics605068"

    .line 117
    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :catch_0
    move-exception p0

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getMethod()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p0, v0, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->upload(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_1
    const-string v0, "[DLS Client] Send fail."

    .line 140
    .line 141
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogE(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v1, "[DLS Client] "

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    return-void
.end method

.method public final upload(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

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
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 26
    .line 27
    iget-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->isBatch:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const-string v0, "gzip"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "text"

    .line 39
    .line 40
    :goto_0
    const-string v1, "Content-Encoding"

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 46
    .line 47
    const/16 v0, 0xbb8

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 65
    .line 66
    new-instance p3, Ljava/util/zip/GZIPOutputStream;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {p3, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {p1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 103
    .line 104
    .line 105
    return-void
.end method
