.class public abstract Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public static logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;


# direct methods
.method public static get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
    .locals 4

    const-string v0, "Sender type is invalid : "

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    if-nez v1, :cond_9

    :cond_1
    const-class v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_4

    if-nez p2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SenderHolder;->diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    :goto_0
    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    sput-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_4
    :goto_1
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    if-nez v2, :cond_8

    if-eqz p1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingE(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    :goto_2
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    sput-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SenderHolder;->diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    :goto_3
    sput-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_4
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    return-object p0

    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
