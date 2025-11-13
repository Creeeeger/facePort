.class public Lcom/samsung/android/sdk/command/provider/CommandProvider;
.super Landroid/content/ContentProvider;
.source "CommandProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    const-class v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    const-string v1, "com.android.settings.intelligence"

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.app.routines"

    const-string v4, "com.samsung.android.app.settings.bixby"

    const-string v5, "com.samsung.accessibility"

    const-string v6, "com.samsung.android.app.galaxyfinder"

    const-string v7, "com.samsung.android.app.galaxyregistry"

    .line 30
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private verifyCallingPackage()Z
    .locals 5

    .line 294
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 297
    sget-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 298
    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "commandId",
            "extras"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "failed to load all commands"

    const-string v5, "cannot create command list"

    const-string v6, "failed to migrate an action : "

    const-string v7, "failed to perform action : "

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 88
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "version"

    const-string v12, "2.0.3"

    .line 90
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/command/provider/CommandProvider;->verifyCallingPackage()Z

    move-result v11

    const-string/jumbo v12, "response_message"

    const/4 v13, 0x2

    const-string/jumbo v14, "response_code"

    if-nez v11, :cond_0

    .line 93
    invoke-virtual {v10, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "invalid_calling_package"

    .line 94
    invoke-virtual {v10, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called from unauthorized package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 101
    :cond_0
    sget-object v11, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "call() version : 2.0.3, caller : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", package : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", method : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", id : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v13

    const-string v15, "com.android.settings.intelligence"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v13

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 110
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/command/CommandSdk;->getInstance()Lcom/samsung/android/sdk/command/CommandSdk;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/sdk/command/CommandSdk;->getActionHandler()Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    move-result-object v15

    if-eqz v15, :cond_18

    .line 113
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, -0x1

    move-wide/from16 v18, v8

    sparse-switch v16, :sswitch_data_0

    :goto_1
    move/from16 v9, v17

    goto :goto_2

    :sswitch_0
    const-string/jumbo v9, "method_CREATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x4

    goto :goto_2

    :sswitch_1
    const-string/jumbo v9, "method_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x3

    goto :goto_2

    :sswitch_2
    const-string/jumbo v9, "method_LOAD_ALL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v9, "method_MIGRATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_4
    const-string/jumbo v9, "method_LOAD"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_2
    const-string v8, "command_list"

    move-object/from16 v20, v13

    const-string v13, "invalid_action"

    move-object/from16 v21, v6

    const-string v6, ", reason : "

    move-object/from16 v22, v4

    const-string v4, "failed to load a command : "

    move-object/from16 v23, v4

    const-string v4, "action"

    packed-switch v9, :pswitch_data_0

    const/4 v9, 0x2

    .line 271
    invoke-virtual {v10, v14, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "invalid_method"

    .line 272
    invoke-virtual {v10, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown method : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 116
    :pswitch_0
    :try_start_0
    invoke-interface {v15}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->createStatelessCommands()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/command/Command;

    .line 120
    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    .line 123
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {v10, v8, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v2, 0x2

    .line 129
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 126
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create command list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v3, 0x2

    .line 129
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    invoke-static {v2, v5}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 128
    :goto_4
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x2

    .line 129
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    sget-object v1, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_8
    throw v0

    :pswitch_1
    if-eqz v3, :cond_c

    .line 136
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_6

    .line 142
    :cond_9
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object v3

    .line 145
    :try_start_2
    new-instance v0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-direct {v0, v1, v10, v15, v2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;-><init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;Landroid/os/Bundle;Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;Ljava/lang/String;)V

    invoke-interface {v15, v2, v3, v0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v3, 0x2

    .line 173
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 170
    :try_start_3
    sget-object v4, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", action type : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v17

    :cond_a
    move/from16 v3, v17

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v3, 0x2

    .line 173
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 172
    :goto_5
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x2

    .line 173
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    sget-object v1, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_b
    throw v0

    :cond_c
    :goto_6
    const/4 v2, 0x2

    .line 137
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 210
    :pswitch_2
    :try_start_4
    invoke-interface {v15}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->createStatelessCommands()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sdk/command/Command;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 215
    :try_start_5
    invoke-virtual {v4}, Lcom/samsung/android/sdk/command/Command;->getStatus()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_d

    .line 216
    sget-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not supported command : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/command/Command;->getCommandId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 220
    :cond_d
    invoke-virtual {v4}, Lcom/samsung/android/sdk/command/Command;->getCommandId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 223
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_e
    move-object/from16 v9, v23

    goto :goto_8

    :catch_2
    move-exception v0

    .line 226
    :try_start_6
    sget-object v5, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v23

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/command/Command;->getCommandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object/from16 v23, v9

    goto :goto_7

    :cond_f
    const/4 v3, 0x1

    .line 230
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {v10, v8, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 235
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v2, 0x2

    .line 236
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    sget-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    move-object/from16 v2, v22

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    move-object/from16 v2, v22

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v2, v22

    .line 233
    :try_start_7
    sget-object v3, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load all commands : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 235
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v4, 0x2

    .line 236
    invoke-virtual {v10, v14, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    invoke-static {v3, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catchall_3
    move-exception v0

    .line 235
    :goto_9
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x2

    .line 236
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    sget-object v1, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_10
    throw v0

    :pswitch_3
    if-eqz v3, :cond_14

    .line 243
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_c

    .line 249
    :cond_11
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object v0

    .line 252
    :try_start_8
    invoke-interface {v15, v2, v0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->migrateCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    .line 255
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v3, 0x2

    goto :goto_a

    :cond_12
    const/4 v3, 0x2

    .line 258
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 263
    :goto_a
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 264
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catchall_4
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v3, v21

    .line 261
    :try_start_9
    sget-object v4, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 263
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v5, 0x2

    .line 264
    invoke-virtual {v10, v14, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catchall_5
    move-exception v0

    .line 263
    :goto_b
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x2

    .line 264
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    sget-object v1, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_13
    throw v0

    :cond_14
    :goto_c
    const/4 v2, 0x2

    .line 244
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_4
    move-object/from16 v9, v23

    if-eqz v3, :cond_15

    .line 183
    :try_start_a
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 184
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object v0

    .line 185
    invoke-interface {v15, v2, v0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    goto :goto_d

    .line 187
    :cond_15
    invoke-interface {v15, v2}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    :goto_d
    if-nez v0, :cond_16

    .line 191
    new-instance v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 192
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->setStatus(I)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    :cond_16
    const/4 v3, 0x1

    .line 196
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "command"

    .line 197
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 201
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v3, 0x2

    .line 202
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catchall_6
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    .line 199
    :try_start_b
    sget-object v3, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 201
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v4, 0x2

    .line 202
    invoke-virtual {v10, v14, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 201
    :goto_e
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v3, 0x2

    .line 202
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    sget-object v1, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_17
    throw v0

    :cond_18
    move-wide/from16 v18, v8

    move-object/from16 v20, v13

    const/4 v3, 0x2

    .line 277
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "handler_timeout"

    .line 278
    invoke-virtual {v10, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "command action handler is not set"

    .line 279
    invoke-static {v11, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_f
    if-eqz v20, :cond_1a

    move-object/from16 v13, v20

    .line 284
    invoke-virtual {v1, v13}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 288
    :cond_1a
    sget-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call() took time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :sswitch_data_0
    .sparse-switch
        -0x3752f67c -> :sswitch_4
        0xb8b682d -> :sswitch_3
        0x3070d446 -> :sswitch_2
        0x3e2b0f54 -> :sswitch_1
        0x4261321a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "selection",
            "selectionArgs"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "values"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "projection",
            "selection",
            "selectionArgs",
            "sortOrder"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "values",
            "selection",
            "selectionArgs"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
