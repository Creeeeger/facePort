.class public Lcom/sec/android/iaft/IAFDSocketFdServer;
.super Ljava/lang/Object;
.source "IAFDSocketFdServer.java"


# static fields
.field private static final blacklist CIPER_POS:I = 0x2

.field static final blacklist DECRYPT_ARDB_NAME:Ljava/lang/String; = "ardbhotfix_db.bin.enc.dec"

.field static final blacklist DECRYPT_HOTFIX_SUFFIX:Ljava/lang/String; = ".dec"

.field static final blacklist DECRYPT_IAFDADDB_NAME:Ljava/lang/String; = "iafdaddbhotfix_db.bin.enc.dec"

.field static final blacklist DECRYPT_IAFDDB_NAME:Ljava/lang/String; = "iafddbhotfix_db.bin.enc.dec"

.field static final blacklist DECRYPT_IAFDHIGHBDB_NAME:Ljava/lang/String; = "iafdiaftdbhotfix_db.bin.enc.dec"

.field static final blacklist DEXPATH_DEENCRYPT:Ljava/lang/String; = "/iafd/dex/"

.field static final blacklist ENCRYPT_HOTFIX_DEX_SUFFIX:Ljava/lang/String; = "_dex"

.field static final blacklist ENCRYPT_HOTFIX_SUFFIX:Ljava/lang/String; = ".bin.enc"

.field private static final blacklist HOTFIX_END:Ljava/lang/String; = "resourcesapybhotfixczfileend"

.field private static final blacklist HOTFIX_START:Ljava/lang/String; = "resourcesapybhotfixczfilestart"

.field static final blacklist IAFDDBPATH_DEENCRYPT:Ljava/lang/String; = "/iafd/db/"

.field static final blacklist IAFDPKEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwaCLv6RvwU8gyFSbynkiPI1Yjb4O3PjCoTQOJadMly1MfePjpFFddlbHnEhyXZqK5znGPNCa/+grdCBV6bbdVf1DTjzcrleKeD6LwC5cioMMjtu91MqrZwDSyAvi6cpdiskEJ/ht+lDJGTdE5bpxJl5tQyy+HrXQk2wJFp3fTWwIDAQAB"

.field static final blacklist IAFD_ABSOLUTEPATH:Ljava/lang/String; = "/data/user/0/com.sec.android.iaft"

.field private static final blacklist NAME_POS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDGetHotfixDataService"

.field static final blacklist mUriHotfixAR_TB:Landroid/net/Uri;

.field static final blacklist mUriHotfixIAFDDB_TB:Landroid/net/Uri;


# instance fields
.field private final blacklist IAFDPATH:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msaveFile(Lcom/sec/android/iaft/IAFDSocketFdServer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDSocketFdServer;->saveFile(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.iaft/IAFDDB_TB"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mUriHotfixIAFDDB_TB:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.iaft/IAFDAD_TB"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mUriHotfixAR_TB:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/iafd/"

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->IAFDPATH:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist saveFile(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "saveFileing..."

    const-string v2, "IAFDGetHotfixDataService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/android/iaft/IAFDFileHexUtils;

    invoke-direct {v0}, Lcom/sec/android/iaft/IAFDFileHexUtils;-><init>()V

    move-object v5, v0

    const-string v6, "/data/user/0/com.sec.android.iaft"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    :try_start_0
    const-string v0, "resourcesapybhotfixczfilestart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "resourcesapybhotfixczfileend"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    aget-object v11, v0, v11

    move-object v3, v11

    const/4 v11, 0x2

    aget-object v11, v0, v11

    move-object v4, v11

    const-string v11, "_dex"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ".bin.enc"

    if-eqz v11, :cond_0

    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/iafd/dex/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v4, v12}, Lcom/sec/android/iaft/IAFDFileHexUtils;->makeHexStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v4}, Lcom/sec/android/iaft/IAFDFileHexUtils;->makeHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    const-string v13, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwaCLv6RvwU8gyFSbynkiPI1Yjb4O3PjCoTQOJadMly1MfePjpFFddlbHnEhyXZqK5znGPNCa/+grdCBV6bbdVf1DTjzcrleKeD6LwC5cioMMjtu91MqrZwDSyAvi6cpdiskEJ/ht+lDJGTdE5bpxJl5tQyy+HrXQk2wJFp3fTWwIDAQAB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/iafd/db/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ".dec"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v13, v12}, Lcom/sec/android/iaft/IAFDRSAUtils;->decryptBytesToFile([BLjava/lang/String;Ljava/lang/String;)V

    const-string v12, "iafddbhotfix_db"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const-string v12, "ardbhotfix_db"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const-string v12, "addbhotfix_db"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const-string v12, "iaftdbhotfix_db"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_3

    :cond_4
    :goto_0
    if-eqz v7, :cond_5

    const-string v0, "IAFDDBHOTFIX_UPDATE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v11, p0

    :try_start_2
    iget-object v0, v11, Lcom/sec/android/iaft/IAFDSocketFdServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v12, Lcom/sec/android/iaft/IAFDSocketFdServer;->mUriHotfixIAFDDB_TB:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_5
    move-object/from16 v11, p0

    :goto_1
    if-eqz v8, :cond_6

    const-string v0, "ARDBHOTFIX_UPDATE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    const/4 v8, 0x0

    const-string v0, "ADDBHOTFIX_UPDATE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v10, :cond_8

    const/4 v10, 0x0

    const-string v0, "IAFTDBHOTFIX_UPDATE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_3
    const-string v12, "ToFile fail"

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    :goto_4
    nop

    :goto_5
    const-string v0, "saveFile completed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist getDataFromClient(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sec/android/iaft/IAFDSocketFdServer$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/iaft/IAFDSocketFdServer$1;-><init>(Lcom/sec/android/iaft/IAFDSocketFdServer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
