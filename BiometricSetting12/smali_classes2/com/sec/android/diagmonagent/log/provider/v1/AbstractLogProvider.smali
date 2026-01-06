.class public abstract Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;
.super Landroid/content/ContentProvider;
.source "AbstractLogProvider.java"


# static fields
.field public static final AUTHORITY_LIST:Ljava/lang/String; = "authorityList"

.field public static final DIAGMON_PREFERENCES:Ljava/lang/String; = "diagmon_preferences"

.field public static final DIAGMON_SUPPORT_V1_VERSION_CODE:Ljava/lang/String; = "diagmonSupportV1VersionCode"

.field public static final DIAGMON_SUPPORT_V1_VERSION_NAME:Ljava/lang/String; = "diagmonSupportV1VersionName"

.field public static final LOG_LIST:Ljava/lang/String; = "logList"

.field public static final OPERATION_NOT_SUPPORTED:Ljava/lang/String; = "Operation not supported"

.field public static final PERMISSION_DENIAL:Ljava/lang/String; = "Permission Denial"

.field public static final PLAIN_LOG_LIST:Ljava/lang/String; = "plainLogList"


# instance fields
.field protected data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getDiagmonSupportV1VersionCodeBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-class v1, Lcom/samsung/context/sdk/samsunganalytics/BuildConfig;

    const-string v2, "VERSION_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "diagmonSupportV1VersionCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private getDiagmonSupportV1VersionNameBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-class v1, Lcom/samsung/context/sdk/samsunganalytics/BuildConfig;

    const-string v2, "VERSION_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "diagmonSupportV1VersionName"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->enforceSelfOrSystem()V

    const-string v0, "clear"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->clear()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "set"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->set(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->get(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected clear()Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->getDiagMonSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v1
.end method

.method protected contains(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->getDiagMonSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected enforceSelfOrSystem()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission Denial"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected get(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->getDiagMonSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    :try_start_2
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    const-wide/16 v2, 0x0

    :try_start_3
    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    :goto_3
    const/4 v2, 0x0

    :try_start_4
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    :goto_4
    return-object v1
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method protected getDiagMonSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "diagmon_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->enforceSelfOrSystem()V

    const-string v0, "text/plain"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->setLogList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v3, "logList"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->setPlainLogList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v5, "plainLogList"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->getDiagmonSupportV1VersionNameBundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "diagmonSupportV1VersionName"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->getDiagmonSupportV1VersionCodeBundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "diagmonSupportV1VersionCode"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v4, 0x1

    return v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->enforceSelfOrSystem()V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "logList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v3, "plainLogList"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->openParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Data is corrupted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected openParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected set(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->getDiagMonSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v2
.end method

.method protected abstract setLogList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected setPlainLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
