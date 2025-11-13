.class public Lcom/samsung/android/settings/actions/development/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandManager"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/samsung/android/settings/actions/development/CommandManager;


# instance fields
.field final KEY_ACTION:Ljava/lang/String;

.field final KEY_COMMAND:Ljava/lang/String;

.field final KEY_COMMAND_LIST:Ljava/lang/String;

.field final KEY_RESPONSE_CODE:Ljava/lang/String;

.field final KEY_RESPONSE_MESSAGE:Ljava/lang/String;

.field final METHOD_ACTION:Ljava/lang/String;

.field final METHOD_CREATE:Ljava/lang/String;

.field final METHOD_LOAD:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/actions/development/CommandManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "response_code"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->KEY_RESPONSE_CODE:Ljava/lang/String;

    const-string v0, "response_message"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->KEY_RESPONSE_MESSAGE:Ljava/lang/String;

    const-string v0, "command_list"

    .line 30
    iput-object v0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->KEY_COMMAND_LIST:Ljava/lang/String;

    const-string v0, "command"

    .line 32
    iput-object v0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->KEY_COMMAND:Ljava/lang/String;

    const-string v0, "action"

    .line 34
    iput-object v0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->KEY_ACTION:Ljava/lang/String;

    const-string v0, "method_CREATE"

    .line 36
    iput-object v0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->METHOD_CREATE:Ljava/lang/String;

    const-string v0, "method_LOAD"

    .line 38
    iput-object v0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->METHOD_LOAD:Ljava/lang/String;

    const-string v0, "method_ACTION"

    .line 40
    iput-object v0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->METHOD_ACTION:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/CommandManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/development/CommandManager;
    .locals 2

    .line 53
    sget-object v0, Lcom/samsung/android/settings/actions/development/CommandManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/actions/development/CommandManager;->sInstance:Lcom/samsung/android/settings/actions/development/CommandManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/samsung/android/settings/actions/development/CommandManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/actions/development/CommandManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/actions/development/CommandManager;->sInstance:Lcom/samsung/android/settings/actions/development/CommandManager;

    .line 58
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/actions/development/CommandManager;->sInstance:Lcom/samsung/android/settings/actions/development/CommandManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getCommandList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/command/Command;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/development/CommandManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "method_CREATE"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "response_code"

    .line 103
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "command_list"

    .line 106
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 109
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 110
    new-instance v2, Lcom/samsung/android/sdk/command/Command;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/command/Command;-><init>(Landroid/os/Bundle;)V

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    sget-object v1, Lcom/samsung/android/settings/actions/development/CommandManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/actions/development/CommandManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " command(s) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.sdk.command.COMMAND_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/development/CommandManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 77
    new-instance v2, Landroid/util/Pair;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public loadCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;
    .locals 4

    const-string v0, "command"

    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/development/CommandManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "method_LOAD"

    invoke-virtual {p0, v2, v3, p1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, "response_code"

    .line 131
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 138
    new-instance v0, Lcom/samsung/android/sdk/command/Command;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/Command;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 144
    sget-object v0, Lcom/samsung/android/settings/actions/development/CommandManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/actions/development/CommandManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load a command : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public performAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 2

    .line 155
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    .line 156
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/development/CommandManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const-string v1, "method_ACTION"

    invoke-virtual {p0, p2, v1, p1, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "response_code"

    .line 160
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "response_message"

    .line 161
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    sget-object p2, Lcom/samsung/android/settings/actions/development/CommandManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perform command action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 168
    invoke-interface {p3, p1, p0, p2}, Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;->onActionFinished(ILjava/lang/String;Lcom/samsung/android/sdk/command/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 172
    sget-object p1, Lcom/samsung/android/settings/actions/development/CommandManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
