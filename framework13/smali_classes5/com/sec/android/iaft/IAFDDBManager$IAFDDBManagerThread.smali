.class Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;
.super Ljava/lang/Thread;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAFDDBManagerThread"
.end annotation


# instance fields
.field blacklist mPriority:I

.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDDBManager;


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    .line 161
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 162
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;I)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 171
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    .line 172
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 173
    iput p3, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    .line 174
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 178
    iget v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 180
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 181
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    new-instance v1, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-direct {v1, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;-><init>(Lcom/sec/android/iaft/IAFDDBManager;)V

    invoke-static {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    new-instance v2, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Landroid/os/Handler;)V

    invoke-static {v1, v2}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDDBManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v1, v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V

    .line 194
    sget v2, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    add-int/2addr v2, v0

    sput v2, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 195
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    const/16 v2, 0x19

    if-ge v0, v2, :cond_2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDBInitReTryCnt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAFDDBManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v2}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v2

    const/16 v3, 0xfe

    invoke-virtual {v2, v3}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 203
    return-void
.end method
