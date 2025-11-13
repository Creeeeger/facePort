.class public Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
.super Ljava/lang/Object;
.source "SemInfoExtractionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$UIBundleKey;
    }
.end annotation


# static fields
.field private static final blacklist EXTRACTED_INFO_DATA:Ljava/lang/String; = "SemExtractedInfo"

.field private static final blacklist EXTRACTION_DATA_TYPE:Ljava/lang/String; = "data_type"

.field private static final blacklist EXTRACTION_REQ_DATA:Ljava/lang/String; = "req_data"

.field private static final blacklist EXTRACTION_REQ_TIME:Ljava/lang/String; = "req_time"

.field private static final blacklist MSG_EXTRACTION_CALCEL:I = 0x1ba1

.field private static final blacklist MSG_EXTRACTION_END:I = 0x1ba0

.field private static final blacklist MSG_EXTRACTION_START:I = 0x1b9f

.field private static final blacklist STRING_DATA_TYPE:I = 0x1

.field private static final blacklist STROKE_DATA_TYPE:I = 0x3

.field private static blacklist TAG:Ljava/lang/String; = null

.field private static final blacklist URI_DATA_TYPE:I = 0x2


# instance fields
.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

.field private blacklist mInfoExtractionService:Landroid/os/IBinder;

.field public blacklist mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

.field private blacklist mRequestNumber:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmInfoExtractionService(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestNumber(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestInfoExtraction(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;Landroid/os/IBinder;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    const-string/jumbo v0, "semInfoextration"

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    .line 32
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    .line 55
    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    .line 61
    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    .line 140
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "SemInfoExtractionManager setting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz p1, :cond_1

    .line 145
    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    .line 147
    invoke-direct {p0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->isPenFeatureModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemInfoExtractionManager call by : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "SemInfoExtraction only use for Pen Feature models."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not get the SemInfoExtraction service. -> context is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist bindInfoExtractionService()Z
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "mContext is NULL -> can\'t try to bind with InfoExtractionService! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 361
    .local v0, "ret":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.service.hermes.InfoExtractionService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 362
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.service.airviewdictionary"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 364
    if-nez v0, :cond_1

    .line 365
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to bind with InfoExtractionService service!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    return v0
.end method

.method private blacklist isPenFeatureModel(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "uspLevel":I
    if-gtz v0, :cond_0

    .line 161
    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPenFeatureModel : Pen is not supported, uspLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v2

    .line 164
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V
    .locals 5
    .param p1, "InfoExtractionService"    # Landroid/os/IBinder;
    .param p2, "dataType"    # I
    .param p3, "reqObject"    # Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestInfoExtraction data type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 402
    .local v0, "bundle":Landroid/os/Bundle;
    iget-wide v1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    const-string/jumbo v3, "req_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 403
    const-string v1, "data_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string/jumbo v1, "req_data"

    packed-switch p2, :pswitch_data_0

    .line 415
    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t make data type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :pswitch_0
    move-object v2, p3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 413
    goto :goto_0

    .line 409
    :pswitch_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    goto :goto_0

    .line 406
    :pswitch_2
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    nop

    .line 419
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x1b9f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 420
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 421
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;

    invoke-direct {v3, p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;-><init>(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 423
    if-eqz p1, :cond_0

    .line 424
    :try_start_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 425
    .local v2, "requestMessenger":Landroid/os/Messenger;
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 426
    sget-object v3, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "request Extraction : success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    nop

    .end local v2    # "requestMessenger":Landroid/os/Messenger;
    goto :goto_1

    .line 428
    :cond_0
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "request Extraction : InfoExtractionService is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_1
    goto :goto_2

    .line 430
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 433
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setRequestNumber()V
    .locals 2

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    .line 274
    return-void
.end method

.method private blacklist startExtraction(ILjava/lang/Object;)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "reqObject"    # Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 372
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "mConnection is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$1;-><init>(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    .line 385
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : Binding to InfoExtractionService..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->bindInfoExtractionService()Z

    goto :goto_0

    .line 388
    :cond_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "mConnection is not NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 390
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "mInfoExtractionService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->bindInfoExtractionService()Z

    goto :goto_0

    .line 393
    :cond_1
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "mInfoExtractionService != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V

    .line 397
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addResultRule(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "addResultRule doesn\'t support in this version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method public whitelist extract(Landroid/net/Uri;)J
    .locals 2
    .param p1, "requestUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 224
    if-nez p1, :cond_0

    .line 225
    const-wide/16 v0, -0x1

    return-wide v0

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    .line 228
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    .line 229
    iget-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide v0
.end method

.method public blacklist extract(Lcom/samsung/android/infoextraction/SemStrokeData;)J
    .locals 2
    .param p1, "requestSemStrokeData"    # Lcom/samsung/android/infoextraction/SemStrokeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 246
    if-nez p1, :cond_0

    .line 247
    const-wide/16 v0, -0x1

    return-wide v0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    .line 250
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    .line 251
    iget-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide v0
.end method

.method public whitelist extract(Ljava/lang/String;)J
    .locals 2
    .param p1, "requestString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 206
    if-nez p1, :cond_0

    .line 207
    const-wide/16 v0, -0x1

    return-wide v0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    .line 210
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    .line 211
    iget-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide v0
.end method

.method public whitelist extract(Ljava/util/ArrayList;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/infoextraction/SemStrokeData;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 264
    .local p1, "requestSemStrokeDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/infoextraction/SemStrokeData;>;"
    if-nez p1, :cond_0

    .line 265
    const-wide/16 v0, -0x1

    return-wide v0

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    .line 268
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    .line 269
    iget-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide v0
.end method

.method public blacklist hideLinkPreview()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 318
    :try_start_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "hideLinkPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.airviewdictionary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "com.samsung.android.service.hermes.HermesTickerService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "dismiss"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setInfoExtractionListener(Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;)V
    .locals 2
    .param p1, "infoExtractionListener"    # Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 176
    if-eqz p1, :cond_0

    .line 180
    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    .line 181
    return-void

    .line 177
    :cond_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "infoExtractionListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnExtractionCompletedListener(Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;)V
    .locals 2
    .param p1, "onExtractionCompletedListener"    # Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 189
    if-eqz p1, :cond_0

    .line 193
    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    .line 194
    return-void

    .line 190
    :cond_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "onExtractionCompletedListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist showLinkPreview(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 291
    if-eqz p1, :cond_0

    .line 294
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string v1, "infoExtractionListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showLinkPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.airviewdictionary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "com.samsung.android.service.hermes.HermesTickerService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v1, "contents"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string/jumbo v1, "position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 302
    const-string v1, "dismiss"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "urlStr is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist training(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "training doesn\'t support in this version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method
