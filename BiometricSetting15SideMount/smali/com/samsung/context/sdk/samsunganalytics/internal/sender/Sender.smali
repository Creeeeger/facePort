.class public abstract Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public static logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;


# direct methods
.method public static get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
    .locals 4

    .line 1
    const-string v0, "Sender type is invalid : "

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    xor-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_4

    .line 18
    :cond_0
    if-nez v1, :cond_9

    .line 19
    .line 20
    :cond_1
    const-class v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    xor-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    if-nez v2, :cond_4

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SenderHolder;->diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 41
    .line 42
    :goto_0
    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 43
    .line 44
    sput-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_5

    .line 49
    :cond_4
    :goto_1
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 50
    .line 51
    if-nez v2, :cond_8

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    if-eq p1, v2, :cond_5

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    if-eq p1, v2, :cond_5

    .line 60
    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingE(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    .line 78
    .line 79
    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 80
    .line 81
    .line 82
    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    .line 86
    .line 87
    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 88
    .line 89
    .line 90
    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 91
    .line 92
    :goto_2
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 93
    .line 94
    if-nez p2, :cond_7

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    sput-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SenderHolder;->diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 98
    .line 99
    :goto_3
    sput-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 100
    .line 101
    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_9
    :goto_4
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    .line 103
    .line 104
    return-object p0

    .line 105
    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p0
.end method
