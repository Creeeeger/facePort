.class public Lcom/samsung/android/sdk/command/provider/CommandProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CORE_SYSTEM_PACKAGES:[Ljava/lang/String;

.field public static final WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;

    const-string v5, "com.samsung.accessibility"

    const-string v6, "com.samsung.android.app.galaxyfinder"

    const-string v1, "com.android.settings.intelligence"

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.app.routines"

    const-string v4, "com.samsung.android.app.settings.bixby"

    const-string v7, "com.samsung.android.app.galaxyregistry"

    const-string v8, "com.sec.android.app.launcher"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    const-string v0, "com.android.settings.intelligence"

    const-string v1, "com.samsung.android.app.galaxyfinder"

    const-string v2, "com.samsung.android.app.galaxyregistry"

    const-string v3, "com.sec.android.app.launcher"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->CORE_SYSTEM_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v0, "version"

    const-string v11, "2.0.8"

    invoke-static {v0, v11}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1d

    sget-object v12, Lcom/samsung/android/sdk/command/provider/CommandProvider;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    const/4 v13, 0x0

    :goto_0
    const/16 v14, 0x8

    if-ge v13, v14, :cond_1d

    aget-object v14, v12, v13

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "call() version : 2.0.8, caller : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", package : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", method : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", id : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->CORE_SYSTEM_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v12, Lcom/samsung/android/sdk/command/provider/CommandProvider$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1}, Lcom/samsung/android/sdk/command/provider/CommandProvider$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;)V

    invoke-interface {v0, v12}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v0

    :goto_1
    move-object v12, v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    sget-object v13, Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;->INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v0, v13, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "wait until the handler is set (timeout 3 seconds)"

    const-string v15, "[CmdL-2.0.8]CommandSdk"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0xbb8

    invoke-virtual {v14, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_1d

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_3
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, v13, Lcom/samsung/android/sdk/command/CommandSdk;->mActionHandler:Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;

    if-eqz v5, :cond_19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_4
    const/4 v6, -0x1

    goto :goto_5

    :sswitch_0
    const-string v0, "method_CREATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v6, 0x4

    goto :goto_5

    :sswitch_1
    const-string v0, "method_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v6, 0x3

    goto :goto_5

    :sswitch_2
    const-string v0, "method_LOAD_ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v6, v7

    goto :goto_5

    :sswitch_3
    const-string v0, "method_MIGRATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move v6, v8

    goto :goto_5

    :sswitch_4
    const-string v0, "method_LOAD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_5
    packed-switch v6, :pswitch_data_0

    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "response_message"

    const-string v3, "invalid_method"

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CommandProvider"

    const-string v3, "unknown method : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :pswitch_0
    :try_start_3
    invoke-interface {v5}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->createStatelessCommands()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/command/Command;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_7
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "command_list"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_7
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CommandProvider"

    const-string v2, "cannot create command list"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :goto_8
    :try_start_4
    const-string v2, "CommandProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create command list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_7

    :goto_9
    const-string v1, "response_code"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "response_code"

    invoke-virtual {v11, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CommandProvider"

    const-string v2, "cannot create command list"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw v0

    :pswitch_1
    if-eqz v4, :cond_c

    const-string v0, "action"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_d

    :cond_9
    const-string v0, "action"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object v2

    :try_start_5
    new-instance v0, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-direct {v0, v1, v11, v5, v3}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;-><init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;Landroid/os/Bundle;Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;Ljava/lang/String;)V

    invoke-interface {v5, v3, v2, v0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to perform action : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    :try_start_6
    const-string v4, "CommandProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to perform action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", action type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v2

    move v15, v2

    goto :goto_b

    :cond_a
    const/4 v15, -0x1

    :goto_b
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to perform action : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_c
    const-string v1, "response_code"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "response_code"

    invoke-virtual {v11, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to perform action : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    throw v0

    :cond_c
    :goto_d
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "response_message"

    const-string v2, "invalid_action"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :pswitch_2
    :try_start_7
    invoke-interface {v5}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->createStatelessCommands()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sdk/command/Command;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget v0, v4, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    if-ne v0, v7, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not supported command : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;)V

    goto :goto_e

    :catchall_3
    move-exception v0

    goto/16 :goto_12

    :catch_3
    move-exception v0

    goto :goto_f

    :cond_e
    iget-object v0, v4, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-interface {v5, v0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_e

    :goto_f
    :try_start_9
    const-string v6, "CommandProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed to load a command : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason : "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_11

    :cond_f
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "command_list"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_10
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CommandProvider"

    const-string v2, "failed to load all commands"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :goto_11
    :try_start_a
    const-string v2, "CommandProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load all commands : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_10

    :goto_12
    const-string v1, "response_code"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "response_code"

    invoke-virtual {v11, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CommandProvider"

    const-string v2, "failed to load all commands"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    throw v0

    :pswitch_3
    if-eqz v4, :cond_14

    const-string v0, "action"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_17

    :cond_11
    const-string v0, "action"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object v0

    :try_start_b
    invoke-interface {v5, v3, v0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->migrateCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v2, "response_code"

    invoke-virtual {v11, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "action"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_13

    :catchall_4
    move-exception v0

    goto :goto_16

    :catch_5
    move-exception v0

    goto :goto_15

    :cond_12
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_13
    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to migrate an action : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :goto_15
    :try_start_c
    const-string v2, "CommandProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to migrate an action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to migrate an action : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :goto_16
    const-string v1, "response_code"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "response_code"

    invoke-virtual {v11, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to migrate an action : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    throw v0

    :cond_14
    :goto_17
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "response_message"

    const-string v2, "invalid_action"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :pswitch_4
    if-eqz v4, :cond_15

    :try_start_d
    const-string v0, "action"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "action"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/action/CommandAction;->createActionFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/action/CommandAction;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-interface {v5, v3}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    goto :goto_18

    :catchall_5
    move-exception v0

    goto/16 :goto_1b

    :catch_6
    move-exception v0

    goto :goto_1a

    :cond_15
    invoke-interface {v5, v3}, Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    :cond_16
    :goto_18
    if-nez v0, :cond_17

    new-instance v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;-><init>(Ljava/lang/String;)V

    iput v7, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatus:I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    :cond_17
    const-string v2, "response_code"

    invoke-virtual {v11, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "command"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to load a command : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :goto_1a
    :try_start_e
    const-string v2, "CommandProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load a command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    const-string v0, "response_code"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to load a command : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :goto_1b
    const-string v1, "response_code"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "response_code"

    invoke-virtual {v11, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to load a command : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    throw v0

    :cond_19
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "response_message"

    const-string v2, "handler_timeout"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CommandProvider"

    const-string v2, "command action handler is not set"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_1c
    if-eqz v12, :cond_1b

    invoke-virtual {v1, v12}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call() took time : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/command/util/LogWrapper;->i(Ljava/lang/String;)V

    return-object v11

    :goto_1d
    :try_start_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0

    :cond_1c
    add-int/2addr v13, v8

    goto/16 :goto_0

    :cond_1d
    const-string v0, "response_code"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "response_message"

    const-string v2, "invalid_calling_package"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CommandProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called from unauthorized package : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/command/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

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

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
