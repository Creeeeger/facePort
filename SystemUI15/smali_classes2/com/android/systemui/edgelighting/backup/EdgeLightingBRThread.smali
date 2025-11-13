.class public final Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final PERMISSIONS:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

.field public final mIntent:Landroid/content/Intent;

.field public mLoopEnable:Z

.field public mOption:I

.field public mSecuritylevel:I

.field public mSessionKey:Ljava/lang/String;

.field public mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    new-instance p1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;-><init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v1, "EdgeLightingBRThread"

    if-nez v0, :cond_0

    const-string p0, "intent is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "SAVE_PATH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v3, "ACTION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v5, "SESSION_KEY"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v5, "SOURCE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v5, "SECURITY_LEVEL"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    const-string v5, "EXPORT_SESSION_TIME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGELIGHTING"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iput v5, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->PERMISSIONS:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Permission fail"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    return-void

    :cond_2
    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    if-ne v1, v5, :cond_5

    if-nez v2, :cond_4

    iput-boolean v5, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSessionKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/backup/Encryption;->streamCrypt(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSecuritylevel:I

    invoke-static {v1, v0}, Lcom/android/systemui/edgelighting/backup/Encryption;->decrypt(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/backup/BRUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/edgelighting/backup/BRUtils;->restoreSettingValue(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;-><init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :goto_1
    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x3

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final sendResponse(II)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mOption:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_EDGELIGHTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ERR_CODE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "REQ_SIZE"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SOURCE"

    iget-object p2, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
