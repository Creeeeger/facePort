.class public Landroid/content/pm/ASKSManager;
.super Ljava/lang/Object;
.source "ASKSManager.java"


# static fields
.field public static final blacklist ASKS_UNKNOWN_BLOCKBYLIST:I = 0x1

.field public static final blacklist ASKS_UNKNOWN_BLOCKBYPEM:I = 0x2

.field public static final blacklist ASKS_UNKNOWN_BLOCKBYURL:I = 0x3

.field public static final blacklist ASKS_UNKNOWN_BLOCK_DETAIL_0:I = 0x78

.field public static final blacklist ASKS_UNKNOWN_BLOCK_DETAIL_1:I = 0x79

.field public static final blacklist ASKS_UNKNOWN_BLOCK_DETAIL_2:I = 0x7a

.field public static final blacklist ASKS_UNKNOWN_BLOCK_DETAIL_3:I = 0x7b

.field public static final blacklist ASKS_UNKNOWN_BLOCK_DETAIL_4:I = 0x7c

.field public static final blacklist ASKS_UNKNOWN_DANGEROUSBLOCK:I = 0x66

.field public static final blacklist ASKS_UNKNOWN_DANGEROUSBLOCKBYPEM:I = 0x67

.field public static final blacklist ASKS_UNKNOWN_DANGEROUSWARNING:I = 0x65

.field public static final blacklist ASKS_UNKNOWN_EXCEPT:I = 0x0

.field public static final blacklist ASKS_UNKNOWN_EXECUTE_ALLOW:I = 0x7e

.field public static final blacklist ASKS_UNKNOWN_EXECUTE_BLOCK:I = 0x7d

.field public static final blacklist ASKS_UNKNOWN_WARNING:I = 0x64

.field public static final blacklist ASKS_UNKNOWN_WARNING_DETAIL_0:I = 0x6e

.field public static final blacklist ASKS_UNKNOWN_WARNING_DETAIL_1:I = 0x6f

.field public static final blacklist ASKS_UNKNOWN_WARNING_DETAIL_2:I = 0x70

.field public static final blacklist ASKS_UNKNOWN_WARNING_DETAIL_3:I = 0x71

.field public static final blacklist ASKS_UNKNOWN_WARNING_DETAIL_4:I = 0x72

.field private static final blacklist TAG:Ljava/lang/String; = "ASKSManager"

.field public static final blacklist TYPE_DENY:Ljava/lang/String; = "DENY"

.field public static final blacklist TYPE_REVOKE:Ljava/lang/String; = "REVOKE"

.field private static blacklist hasBlockedPolicy:Z

.field private static blacklist isExactlyTargetDevice:Z

.field private static blacklist mASKSPidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mASKSRestrictedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mIMEIList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static volatile blacklist sASKSManager:Landroid/content/pm/IASKSManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/pm/ASKSManager;->hasBlockedPolicy:Z

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/pm/ASKSManager;->isExactlyTargetDevice:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/ASKSManager;->mASKSRestrictedPackages:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/ASKSManager;->mASKSPidMap:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/ASKSManager;->mIMEIList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addPackageWithPid(ILjava/lang/String;)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    sget-object v0, Landroid/content/pm/ASKSManager;->mASKSPidMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 179
    if-eqz p1, :cond_0

    .line 180
    :try_start_0
    sget-object v1, Landroid/content/pm/ASKSManager;->mASKSPidMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getASKSIDataFromXML(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 299
    .local p0, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSI.xml"

    .line 301
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "IDENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v2, "DUMMY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 310
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 312
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 314
    sput-boolean v5, Landroid/content/pm/ASKSManager;->hasBlockedPolicy:Z

    .line 315
    return-void

    .line 319
    :cond_1
    const/4 v3, 0x0

    .line 321
    .local v3, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v3, v6

    .line 325
    nop

    .line 328
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 329
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 331
    const-string v7, ""

    .line 332
    .local v7, "keyName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 334
    .local v8, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 335
    .local v9, "eventType":I
    :goto_0
    if-eq v9, v4, :cond_5

    .line 336
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, "name":Ljava/lang/String;
    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 357
    :pswitch_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 358
    if-eqz p0, :cond_4

    .line 360
    invoke-virtual {p0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 340
    :pswitch_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 342
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 343
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 345
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v11

    goto :goto_1

    .line 346
    :cond_3
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 348
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 349
    if-eqz v8, :cond_4

    .line 350
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_4
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v9, v11

    .line 366
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_0

    .line 367
    :cond_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "keyName":Ljava/lang/String;
    .end local v8    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "eventType":I
    nop

    .line 388
    .end local v3    # "fileReader":Ljava/io/FileReader;
    return-void

    .line 378
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 380
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    goto :goto_2

    .line 382
    :catch_1
    move-exception v5

    .line 384
    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 385
    return-void

    .line 369
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 371
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 374
    goto :goto_3

    .line 373
    :catch_3
    move-exception v5

    .line 375
    :goto_3
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 376
    return-void

    .line 322
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v4

    .line 323
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 324
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized blacklist getASKSManager()Landroid/content/pm/IASKSManager;
    .locals 5

    const-class v0, Landroid/content/pm/ASKSManager;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Landroid/content/pm/ASKSManager;->sASKSManager:Landroid/content/pm/IASKSManager;

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Landroid/content/pm/ASKSManager;->sASKSManager:Landroid/content/pm/IASKSManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 139
    :cond_0
    :try_start_1
    const-string v1, "asks"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 140
    .local v1, "b":Landroid/os/IBinder;
    const-string v2, "ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default service binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {v1}, Landroid/content/pm/IASKSManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IASKSManager;

    move-result-object v2

    sput-object v2, Landroid/content/pm/ASKSManager;->sASKSManager:Landroid/content/pm/IASKSManager;

    .line 142
    const-string v2, "ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/content/pm/ASKSManager;->sASKSManager:Landroid/content/pm/IASKSManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v2, Landroid/content/pm/ASKSManager;->sASKSManager:Landroid/content/pm/IASKSManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 135
    .end local v1    # "b":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist getASKSerrorDetail(I)Ljava/lang/String;
    .locals 1
    .param p0, "returnCode"    # I

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "returnDetail":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 224
    const-string v0, "Unknown Reason"

    goto :goto_0

    .line 207
    :pswitch_0
    const-string v0, "INSTALL_FAILED_REJECTED_BY_DATE"

    .line 208
    goto :goto_0

    .line 210
    :pswitch_1
    const-string v0, "INSTALL_FAILED_REJECTED_BY_BUILDTYPE"

    .line 211
    goto :goto_0

    .line 215
    :pswitch_2
    const-string v0, "INSTALL_FAILED_MISSING_CERTIFICATION"

    .line 216
    goto :goto_0

    .line 218
    :pswitch_3
    const-string v0, "INSTALL_FAILED_ADP_VERSION_LOCKED"

    .line 219
    goto :goto_0

    .line 221
    :pswitch_4
    const-string v0, "INSTALL_FAILED_BLOCKED_CROSS_DOWN"

    .line 222
    nop

    .line 228
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0xbbe
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getPackageNameFromPid(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ASKSManager;->mASKSPidMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 197
    :try_start_0
    sget-object v2, Landroid/content/pm/ASKSManager;->mASKSPidMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 198
    monitor-exit v1

    .line 199
    return-object v0

    .line 198
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static blacklist hasBlockPolicy()Z
    .locals 1

    .line 232
    sget-boolean v0, Landroid/content/pm/ASKSManager;->hasBlockedPolicy:Z

    return v0
.end method

.method public static blacklist isBlockTarget(ILjava/lang/String;)Z
    .locals 6
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "isTarget":Z
    sget-boolean v1, Landroid/content/pm/ASKSManager;->isExactlyTargetDevice:Z

    const-string v2, "ASKSManager"

    if-nez v1, :cond_5

    .line 241
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v1, "identMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {v1}, Landroid/content/pm/ASKSManager;->getASKSIDataFromXML(Ljava/util/HashMap;)V

    .line 244
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 246
    sget-object v3, Landroid/content/pm/ASKSManager;->sASKSManager:Landroid/content/pm/IASKSManager;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/content/pm/ASKSManager;->mIMEIList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    :try_start_0
    sget-object v3, Landroid/content/pm/ASKSManager;->sASKSManager:Landroid/content/pm/IASKSManager;

    invoke-interface {v3}, Landroid/content/pm/IASKSManager;->getIMEIList()Ljava/util/List;

    move-result-object v3

    .line 249
    .local v3, "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    sget-object v4, Landroid/content/pm/ASKSManager;->mIMEIList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v3    # "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 253
    :catch_0
    move-exception v3

    .line 257
    :cond_1
    :goto_0
    sget-object v3, Landroid/content/pm/ASKSManager;->mIMEIList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 259
    .local v4, "hemi":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    const-string v3, "blocking target matched"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v3, 0x1

    sput-boolean v3, Landroid/content/pm/ASKSManager;->isExactlyTargetDevice:Z

    .line 263
    goto :goto_2

    .line 265
    .end local v4    # "hemi":Ljava/lang/String;
    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    goto :goto_3

    .line 268
    :cond_4
    const-string v3, "identMap is empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1    # "identMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_5
    :goto_3
    sget-boolean v1, Landroid/content/pm/ASKSManager;->isExactlyTargetDevice:Z

    if-eqz v1, :cond_7

    .line 274
    const/16 v1, 0x2710

    if-le p0, v1, :cond_6

    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 275
    const-string v1, "com.wsomacp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 276
    const-string v1, "com.samsung.android.dialer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 278
    const/4 v0, 0x1

    goto :goto_4

    .line 280
    :cond_6
    const-string v1, "camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 282
    const/4 v0, 0x1

    goto :goto_4

    .line 285
    :cond_7
    sget-object v1, Landroid/content/pm/ASKSManager;->mIMEIList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 287
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKSI.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 289
    const-string v3, "This is not target device"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 294
    .end local v1    # "file":Ljava/io/File;
    :cond_8
    :goto_4
    return v0
.end method

.method public static blacklist isRestrictedTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "isTarget":Z
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object v1, Landroid/content/pm/ASKSManager;->mASKSRestrictedPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v2, Landroid/content/pm/ASKSManager;->mASKSRestrictedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    if-eqz p1, :cond_1

    sget-object v2, Landroid/content/pm/ASKSManager;->mASKSRestrictedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    const/4 v0, 0x1

    .line 163
    :cond_1
    monitor-exit v1

    .line 164
    return v0

    .line 163
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 152
    :cond_2
    :goto_0
    return v0
.end method

.method public static blacklist removePackageWithPid(I)V
    .locals 3
    .param p0, "pid"    # I

    .line 186
    sget-object v0, Landroid/content/pm/ASKSManager;->mASKSPidMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Landroid/content/pm/ASKSManager;->mASKSPidMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Landroid/content/pm/ASKSManager;->mASKSPidMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist updateRestrictedTargetPackages(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p0, "updateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/content/pm/ASKSManager;->mASKSRestrictedPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Landroid/content/pm/ASKSManager;->mASKSRestrictedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 172
    sget-object v1, Landroid/content/pm/ASKSManager;->mASKSRestrictedPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
