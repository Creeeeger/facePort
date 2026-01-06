.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;
    .locals 2

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    if-nez v0, :cond_0

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;

    monitor-enter v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-direct {v1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;

    invoke-direct {v1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-direct {v1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    nop

    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
