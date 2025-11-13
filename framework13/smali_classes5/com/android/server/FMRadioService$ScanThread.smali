.class Lcom/android/server/FMRadioService$ScanThread;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;

    .line 4166
    iput-object p1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private blacklist doScan()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 4170
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const/4 v2, 0x2

    const-wide/32 v3, 0x15f90

    const-wide/32 v5, 0x1a5e0

    const-wide/32 v7, 0x155cc

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    .line 4171
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-nez v0, :cond_0

    .line 4172
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    const/16 v11, 0x222e

    invoke-virtual {v0, v11}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    .line 4173
    :cond_0
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v0, v10, :cond_1

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v2, :cond_2

    .line 4174
    :cond_1
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    const/16 v11, 0x1db0

    invoke-virtual {v0, v11}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    .line 4175
    :cond_2
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v9, :cond_7

    .line 4176
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    const/16 v11, 0x1900

    invoke-virtual {v0, v11}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    goto :goto_0

    .line 4178
    :cond_3
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v11, 0x6

    if-ne v0, v11, :cond_5

    .line 4179
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v9, :cond_4

    .line 4180
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto :goto_0

    .line 4182
    :cond_4
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto :goto_0

    .line 4183
    :cond_5
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v10, :cond_6

    .line 4184
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto :goto_0

    .line 4186
    :cond_6
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    const-wide/32 v11, 0x128e0

    invoke-virtual {v0, v11, v12}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    .line 4189
    :cond_7
    :goto_0
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v11, 0x9

    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    if-eq v0, v12, :cond_8

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v11, :cond_8

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4191
    :cond_8
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v13, v14}, Lcom/android/server/FMRadioService;->-$$Nest$fputmPreviousFoundFreq(Lcom/android/server/FMRadioService;J)V

    .line 4192
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v13, v14}, Lcom/android/server/FMRadioService;->-$$Nest$fputmCurrentFoundFreq(Lcom/android/server/FMRadioService;J)V

    .line 4194
    :cond_9
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4195
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/FMPlayerNativeBase;->setScanning(Z)V

    .line 4198
    :cond_a
    :goto_1
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_1e

    .line 4200
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->searchAll()J

    move-result-wide v7

    .line 4201
    .local v7, "freq":J
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetDEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found channel :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4204
    :cond_b
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v3, 0x14

    if-eq v0, v12, :cond_d

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v11, :cond_d

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 4207
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4208
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetDEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate channel :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4210
    :cond_c
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    new-array v5, v15, [Ljava/lang/Long;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4212
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 4213
    goto/16 :goto_8

    .line 4218
    :cond_d
    cmp-long v0, v7, v13

    if-lez v0, :cond_1c

    .line 4219
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v5

    cmp-long v0, v5, v13

    if-gtz v0, :cond_e

    .line 4220
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v7, v8}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanFreq(Lcom/android/server/FMRadioService;J)V

    .line 4223
    :cond_e
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v5, 0xfa

    if-eq v0, v12, :cond_16

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v11, :cond_16

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/32 v16, 0x15f90

    const-wide/32 v18, 0x1a5e0

    goto/16 :goto_6

    .line 4254
    :cond_f
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4255
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4256
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4257
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4259
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v11

    monitor-enter v11

    .line 4260
    :try_start_0
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 4261
    monitor-exit v11

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4264
    :cond_10
    :goto_2
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v0, v10, :cond_12

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v2, :cond_11

    goto :goto_3

    :cond_11
    const-wide/32 v18, 0x1a5e0

    goto :goto_4

    :cond_12
    :goto_3
    const-wide/32 v18, 0x1a5e0

    cmp-long v0, v7, v18

    if-eqz v0, :cond_15

    :goto_4
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v9, :cond_13

    const-wide/32 v16, 0x15f90

    cmp-long v0, v7, v16

    if-nez v0, :cond_14

    goto :goto_5

    :cond_13
    const-wide/32 v16, 0x15f90

    :cond_14
    const-wide/32 v11, 0x155cc

    goto/16 :goto_7

    .line 4266
    :cond_15
    :goto_5
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    new-array v5, v15, [Ljava/lang/Long;

    .line 4267
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 4266
    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4270
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 4271
    goto/16 :goto_8

    .line 4223
    :cond_16
    const-wide/32 v16, 0x15f90

    const-wide/32 v18, 0x1a5e0

    .line 4225
    :goto_6
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v7, v8}, Lcom/android/server/FMRadioService;->-$$Nest$fputmCurrentFoundFreq(Lcom/android/server/FMRadioService;J)V

    .line 4226
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetDEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "scanning current and prev freq:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v11}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v11}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPreviousFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4228
    :cond_17
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPreviousFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-ltz v0, :cond_1a

    .line 4229
    const-string/jumbo v0, "scanning finish"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4230
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v5

    const-wide/32 v11, 0x155cc

    cmp-long v0, v5, v11

    if-nez v0, :cond_18

    .line 4231
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4232
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4234
    :cond_18
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/PlayerExternalChipsetBase;->stopNotifyThread(Z)V

    .line 4235
    :cond_19
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    new-array v5, v15, [Ljava/lang/Long;

    .line 4236
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 4235
    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4239
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 4240
    goto/16 :goto_8

    .line 4241
    :cond_1a
    const-wide/32 v11, 0x155cc

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4242
    const-string/jumbo v0, "scanning found channel"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4243
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/FMRadioService;->-$$Nest$fputmPreviousFoundFreq(Lcom/android/server/FMRadioService;J)V

    .line 4244
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4245
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4246
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 4248
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 4249
    :try_start_1
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 4250
    monitor-exit v3

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 4284
    .end local v7    # "freq":J
    :cond_1b
    :goto_7
    move-wide v7, v11

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    const/16 v11, 0x9

    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    goto/16 :goto_1

    .line 4276
    .restart local v7    # "freq":J
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testmode Skipp value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsSkipTunigVal(Lcom/android/server/FMRadioService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4277
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/PlayerExternalChipsetBase;->stopNotifyThread(Z)V

    .line 4278
    :cond_1d
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    new-array v5, v15, [Ljava/lang/Long;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4281
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 4285
    .end local v7    # "freq":J
    :cond_1e
    :goto_8
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4286
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/FMPlayerNativeBase;->setScanning(Z)V

    .line 4287
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 4291
    const-string v0, "Scan thread released the dimmed screen lock"

    iget-object v1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPowerManager(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;

    move-result-object v1

    const v2, 0x20000001

    const-string v3, "FMRadio Service Scan Thread"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 4293
    .local v1, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4294
    const-string v2, "Scan thread gets the dimmed screen lock"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4296
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "Scanning Thread started..."

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4297
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4298
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 4299
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->isUnMuteRadio()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4300
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "g_fmradio_mute=true"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 4303
    :cond_0
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4304
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->-$$Nest$msetFMAudioPath(Lcom/android/server/FMRadioService;Z)V

    goto :goto_0

    .line 4306
    :cond_1
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PlayerExternalChipsetBase;->muteOn()V

    .line 4309
    :cond_2
    :goto_0
    const-string v4, "Scanning Thread started... - Turning off FM"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4311
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanFreq(Lcom/android/server/FMRadioService;J)V

    .line 4313
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_3

    .line 4314
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanChannelList(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 4316
    :cond_3
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4318
    :goto_1
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsSkipTunigVal(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4320
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmRssi_th(Lcom/android/server/FMRadioService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmSnr_th(Lcom/android/server/FMRadioService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCnt_th(Lcom/android/server/FMRadioService;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/FMRadioService;->-$$Nest$msetSignalSetting(Lcom/android/server/FMRadioService;III)V

    .line 4321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first scan no block channel with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmRssi_th(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmSnr_th(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCnt_th(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4324
    :cond_4
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4325
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/PlayerExternalChipsetBase;->startNotifyThread(Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 4326
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_5

    .line 4327
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanChannelList(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 4329
    :cond_5
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4330
    :goto_2
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v5, 0x3

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Long;

    .line 4331
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 4330
    invoke-virtual {v4, v5, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_3

    .line 4334
    :cond_6
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V

    goto :goto_3

    .line 4337
    :cond_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4343
    :goto_3
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanProgress(Lcom/android/server/FMRadioService;Z)V

    .line 4344
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v2}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanThread(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)V

    .line 4354
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4355
    goto :goto_4

    .line 4343
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 4339
    :catch_0
    move-exception v4

    .line 4341
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in run() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4343
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanProgress(Lcom/android/server/FMRadioService;Z)V

    .line 4344
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v2}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanThread(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)V

    .line 4354
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4355
    :goto_4
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4356
    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4359
    :cond_8
    const-string v0, "Scanning Thread work is done..."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4361
    return-void

    .line 4343
    :goto_5
    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanProgress(Lcom/android/server/FMRadioService;Z)V

    .line 4344
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v2}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanThread(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)V

    .line 4354
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4355
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4356
    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4358
    :cond_9
    throw v4
.end method
