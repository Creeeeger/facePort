.class Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;
.super Landroid/os/Handler;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAFDDBManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDDBManager;


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    .line 374
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 375
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitTBs(Lcom/sec/android/iaft/IAFDDBManager;)V

    goto/16 :goto_1

    .line 382
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_4

    .line 383
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v2}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    move-result-object v2

    if-nez v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    new-instance v3, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    invoke-static {v2}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Landroid/os/Handler;)V

    invoke-static {v2, v3}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;)V

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v2}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDDBManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v4}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 388
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v2, v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_0

    .line 389
    :catch_0
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V

    .line 391
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    sget v3, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    add-int/2addr v3, v0

    sput v3, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 393
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    const/16 v3, 0x19

    if-ge v0, v3, :cond_2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDBInitReTryCnt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IAFDDBManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 397
    :cond_2
    return-void

    .line 400
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$minitTBs(Lcom/sec/android/iaft/IAFDDBManager;)V

    .line 402
    :cond_4
    :goto_1
    return-void
.end method
