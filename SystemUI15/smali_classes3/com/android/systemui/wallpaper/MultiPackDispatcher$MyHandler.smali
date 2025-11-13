.class public final Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget v0, v2, Landroid/os/Message;->what:I

    if-nez v0, :cond_e

    if-nez v3, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v4, v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    iget v0, v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mSelectedUserId:I

    const-string/jumbo v5, "wallpaper_path"

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->-$$Nest$mrequestImageWallpaper(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    iget-object v6, v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    const-string/jumbo v7, "request2DLS: error = "

    const-string/jumbo v0, "request2DLS fail."

    const-string v8, "01"

    const-string v9, "02"

    const-string/jumbo v10, "uri"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    const-string/jumbo v12, "screen"

    const-string v13, "MultiPackDispatcher"

    const/4 v14, 0x1

    if-nez v10, :cond_2

    const-string/jumbo v0, "request2DLS: uri is null."

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    move-object v1, v3

    goto/16 :goto_8

    :cond_2
    const/4 v15, 0x0

    invoke-virtual {v3, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v14, :cond_3

    move v11, v14

    goto :goto_1

    :cond_3
    move v11, v15

    :goto_1
    const-string v14, "isMigration"

    invoke-virtual {v10, v14, v15}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "isCustom"

    invoke-virtual {v10, v2, v15}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v3

    const-string/jumbo v3, "request2DLS path= "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isSubDisplay = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :try_start_1
    const-string v3, ""

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_4

    const-string v2, "USER.PACK."

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_6

    :cond_4
    const-string v2, "MULTI.PACK."

    :goto_2
    if-eqz v11, :cond_5

    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v8, "name"

    invoke-virtual {v15, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v5, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v15, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v1, v15}, Lcom/android/systemui/pluginlock/PluginLockUtils;->requestMultiPack(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v2, "result"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "reason"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    move v2, v5

    :goto_4
    if-nez v2, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v6

    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v1, v13, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v1, v16

    const/4 v0, 0x3

    goto :goto_8

    :cond_8
    :goto_5
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :goto_6
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_7
    const-string/jumbo v0, "request2DLS success."

    check-cast v6, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    invoke-virtual {v6, v13, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    move-object/from16 v1, v16

    :goto_8
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const-string v0, "handleMessage: NOT A CASE!"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_9
    if-nez v2, :cond_a

    sget v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCount:I

    goto :goto_9

    :cond_a
    const/4 v2, 0x1

    sget v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCountSub:I

    add-int/2addr v0, v2

    sput v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCountSub:I

    :goto_9
    const/16 v2, 0x14

    if-ge v0, v2, :cond_b

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v1, p1

    iget v1, v1, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-wide/16 v1, 0x2bc

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    :cond_b
    iget-object v0, v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/PluginWallpaperController$1;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/PluginWallpaperController$1;->onMultipackApplied(I)V

    goto :goto_a

    :cond_c
    move-object/from16 v3, p0

    iget-object v1, v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/PluginWallpaperController$1;

    if-eqz v1, :cond_d

    iget-object v1, v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    new-instance v4, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v0, v2}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;II)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_a
    return-void

    :goto_b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_e
    :goto_c
    return-void
.end method
