.class Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;
.super Ljava/lang/Object;
.source "DiagMonSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

.field mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

.field srObj:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->toggleConfigurationStatus(Z)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const-string v1, "SetConfiguration is aborted"

    packed-switch v0, :pswitch_data_0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Exceptional case"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->srObj:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->generateSRobj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->srObj:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->setSRObj(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->srObj:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->sendSRObj(Landroid/os/Bundle;)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateLegacyConfig(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Invalid DiagMonConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;-><init>()V

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1, v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Valid DiagMonConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Not installed DMA"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
