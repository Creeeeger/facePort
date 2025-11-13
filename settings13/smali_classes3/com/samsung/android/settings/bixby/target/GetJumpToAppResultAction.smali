.class public Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "GetJumpToAppResultAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetJumpToAppResultAction"


# instance fields
.field private TIME_OUT_SECONDS:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyword:Ljava/lang/String;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyword(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mKeyword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatch(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmResult(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mResult:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$misIndexingComplete(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->isIndexingComplete()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartSearch(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->startSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    const-string v0, "time_out"

    .line 33
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mResult:Ljava/lang/String;

    const/4 v0, 0x7

    .line 35
    iput v0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->TIME_OUT_SECONDS:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 51
    new-instance v0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction$1;-><init>(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mKeyword:Ljava/lang/String;

    return-void
.end method

.method private isIndexingComplete()Z
    .locals 4

    .line 130
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.intelligence.search.provider.SettingSearchProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "isIndexingComplete"

    const-string v3, ""

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 134
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private startIndexing()V
    .locals 5

    .line 121
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.intelligence.search.provider.SettingSearchProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "isDexMode"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "startIndexing"

    const-string v4, ""

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-string v1, "\\s+"

    const-string v2, "time_out"

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v3, "content://com.samsung.android.settings.intelligence.search.provider.SettingSearchProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 99
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 100
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    const-string v4, "data_title"

    .line 103
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent_action"

    .line 104
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return search result to intent form : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 98
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 113
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 114
    :catch_0
    sget-object p1, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to search : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-object v2
.end method


# virtual methods
.method public doGetAction()Landroid/os/Bundle;
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fail"

    .line 79
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->startIndexing()V

    .line 84
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 86
    :try_start_0
    iget v2, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->TIME_OUT_SECONDS:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    sget-object v2, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to CountDownLatch.await : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->mResult:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
