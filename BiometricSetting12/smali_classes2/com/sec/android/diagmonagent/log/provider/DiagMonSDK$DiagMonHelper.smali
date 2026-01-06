.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;
.super Ljava/lang/Object;
.source "DiagMonSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DiagMonHelper"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$002(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "LEGACY DMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    invoke-static {p0, p2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$400(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "NEW DMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$302(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->generateSRobj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$302(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$300()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->sendSRObj(Landroid/os/Bundle;)Z

    :cond_2
    invoke-static {p0, p2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$600(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Wrong Status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 5

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "SetConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$002(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez p0, :cond_0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "DiagMonConfiguration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$302(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->generateSRobj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$302(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$300()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->sendSRObj(Landroid/os/Bundle;)Z

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateLegacyConfig(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "Invalid DiagMonConfiguration"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "SetConfiguration is aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    invoke-direct {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;-><init>()V

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    new-instance v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-direct {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;-><init>()V

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$202(Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;)Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$200()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Valid DiagMonConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "Not installed DMA"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "SetConfiguration is aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    goto :goto_1

    :goto_0
    const-string v3, "Exceptional case"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "SetConfiguration is aborted"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
