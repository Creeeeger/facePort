.class public Lcom/samsung/android/settings/cube/index/ControlDataConverter;
.super Ljava/lang/Object;
.source "ControlDataConverter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/samsung/android/settings/cube/index/ControlDataConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->TAG:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildIconUri(I)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 97
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    .line 98
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getControlData()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/cube/index/ControlData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    iget-object v3, v1, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->getIndexedActionDataForActionProvider()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 53
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key"

    .line 54
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v0, "title"

    .line 55
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v0, "summary"

    .line 56
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v0, "screentitle"

    .line 57
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v0, "keywords"

    .line 58
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "icon"

    .line 59
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v0, "fragment"

    .line 60
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v0, "controller"

    .line 61
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "action_type"

    .line 62
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v0, "recoverable"

    .line 63
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const/4 v15, 0x0

    .line 66
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;-><init>()V

    .line 67
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v14

    move/from16 v16, v4

    .line 68
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v4

    .line 69
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v4

    .line 70
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v4

    .line 71
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v4

    .line 72
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-direct {v1, v14}, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->buildIconUri(I)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setIconUri(Landroid/net/Uri;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v4

    .line 73
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v4

    .line 74
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setControllerClassName(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v4

    .line 75
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setControlType(I)Lcom/samsung/android/settings/cube/index/ControlData$Builder;

    move-result-object v4

    .line 76
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v17, v5

    const/4 v5, 0x1

    if-ne v14, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->setRecoverable(Z)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->build()Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v4

    .line 79
    iget-object v5, v1, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v6

    :try_start_2
    const-string v6, "getControlData() ["

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] key = "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/settings/cube/index/ControlData;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->build()Lcom/samsung/android/settings/cube/index/ControlData;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v18, v6

    .line 82
    :goto_2
    :try_start_3
    iget-object v4, v1, Lcom/samsung/android/settings/cube/index/ControlDataConverter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InvalidControlDataException() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_1

    goto :goto_5

    :cond_1
    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 51
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    .line 86
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2
.end method
