.class public Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;
.super Ljava/lang/Object;
.source "SettingsCommandActionHandler.java"

# interfaces
.implements Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;


# instance fields
.field mCachedCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private convertControllerStatusToCommandStatus(Lcom/android/settings/core/BasePreferenceController;)I
    .locals 2

    .line 230
    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    if-eq p0, p1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return p1
.end method

.method private getAvailableCommands()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/command/Command;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getDatabaseAccessor()Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->needToIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->loadAvailableCommands()V

    .line 175
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    return-object p0
.end method

.method private getCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 291
    sget-object p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;->ROUTINES:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->getCategory()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getDatabaseAccessor()Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    iget-object v1, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mDatabaseAccessor:Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    return-object p0
.end method

.method private getIconResId(Ljava/lang/String;I)I
    .locals 1

    .line 297
    sget-object p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;->ROUTINES:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->getIconResId()I

    move-result p2

    :cond_0
    return p2
.end method

.method private getPreferenceController(Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getDatabaseAccessor()Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->getActionDataFromKey(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/actions/ActionBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/samsung/android/settings/actions/ActionData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 286
    sget-object p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;->ROUTINES:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "routines"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 273
    sget-object v0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;->ROUTINES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;

    invoke-virtual {p1}, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->getTitleResId()I

    move-result p1

    if-lez p1, :cond_0

    .line 277
    iget-object p0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private isAvailable(Lcom/android/settings/core/BasePreferenceController;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    return p0

    :cond_1
    return v0
.end method

.method private loadAvailableCommands()V
    .locals 13

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getDatabaseAccessor()Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/actions/ActionsDatabaseAccessor;->getIndexedActionDataForActionProvider()Landroid/database/Cursor;

    move-result-object v0

    .line 184
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "key"

    .line 185
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    .line 186
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "summary"

    .line 187
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "icon"

    .line 188
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 191
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-lez v4, :cond_1

    .line 194
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    goto :goto_0

    :cond_1
    move v9, v8

    .line 195
    :goto_0
    new-instance v10, Landroid/net/Uri$Builder;

    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    const-string v11, "command"

    .line 196
    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".command"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 198
    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 199
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_2

    goto :goto_1

    .line 205
    :cond_2
    new-instance v11, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    move-result-object v6

    .line 207
    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->setSubTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    move-result-object v6

    .line 208
    invoke-direct {p0, v5, v9}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getIconResId(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->setIconResId(I)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    move-result-object v6

    .line 209
    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->setStatus(I)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    move-result-object v6

    .line 210
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->setTarget(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    move-result-object v6

    .line 211
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->setCategory(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;

    move-result-object v5

    .line 212
    invoke-virtual {v5}, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v5

    .line 214
    iget-object v6, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mCachedCommandMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/command/Command;->getCommandId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 217
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    .line 183
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public createStatelessCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/command/Command;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getAvailableCommands()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;
    .locals 12

    const-string v0, "SettingsCommandActionHandler"

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getAvailableCommands()Ljava/util/Map;

    move-result-object v1

    .line 56
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/command/Command;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 57
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    if-eqz v1, :cond_5

    .line 65
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/Command;->getCommandId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 68
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getPreferenceController(Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 71
    invoke-interface {v5}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v7, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    const/high16 v8, 0xc000000

    invoke-static {v7, v6, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 78
    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->convertControllerStatusToCommandStatus(Lcom/android/settings/core/BasePreferenceController;)I

    move-result v7

    .line 79
    invoke-static {v5}, Lcom/samsung/android/settings/actions/templatebuilder/CommandTemplateBuilder;->build(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object v8

    .line 81
    sget-object v9, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    if-ne v8, v9, :cond_2

    const/4 v7, 0x3

    .line 85
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-interface {v5}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v5, v2

    move-object v2, v8

    move v8, v7

    move-object v7, v11

    goto :goto_2

    :cond_3
    const/4 v7, 0x2

    move-object v5, v3

    move-object v9, v5

    move v8, v7

    move-object v7, v9

    .line 91
    :goto_2
    new-instance v10, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {v10, v1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Lcom/samsung/android/sdk/command/Command;)V

    .line 92
    invoke-virtual {v10, v2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->setCommandTemplate(Lcom/samsung/android/sdk/command/template/CommandTemplate;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v8}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->setStatus(I)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v9}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v7}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->setStatusText(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->setLaunchIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    move-result-object v1

    .line 97
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->setTarget(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    move-result-object v1

    .line 98
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->setCategory(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    move-result-object v1

    .line 99
    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getIconResId(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->setIconResId(I)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    .line 104
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid internal key : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot load a command due to an exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-object v3
.end method

.method public performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 7

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    .line 121
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->getPreferenceController(Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->isAvailable(Lcom/android/settings/core/BasePreferenceController;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 126
    invoke-interface {v1}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-interface {v1}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 132
    invoke-static {}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->getInstance()Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, v6, p1, v4}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->registerReceiver(Landroid/content/Context;Landroid/net/Uri;Landroid/content/IntentFilter;)V

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getCommandTemplate()Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolverFactory;->get(I)Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;

    invoke-direct {v0, p0, v3, p3}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;-><init>(Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;ZLcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V

    invoke-interface {p1, p2, v1, v0}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;->resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;)V

    goto :goto_1

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "controller is not available "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string p1, "controller is null"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsCommandActionHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    const/4 p0, 0x2

    if-nez v2, :cond_3

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    .line 159
    invoke-interface {p3, p0, p1}, Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;->onActionFinished(ILjava/lang/String;)V

    :cond_3
    return-void
.end method
