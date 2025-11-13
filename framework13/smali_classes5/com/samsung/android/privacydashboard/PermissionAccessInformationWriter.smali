.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;
.super Ljava/lang/Object;
.source "PermissionAccessInformationWriter.java"


# static fields
.field private static final blacklist PROVIDER_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    nop

    .line 14
    const-string v0, "content://com.samsung.android.privacydashboard.provider/permissionAccessInformations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;->PROVIDER_URI:Landroid/net/Uri;

    .line 13
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist write(Landroid/content/Context;Ljava/util/Iterator;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/privacydashboard/PermissionAccessInformation;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/privacydashboard/PermissionAccessInformation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "informationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    nop

    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    .line 22
    .local v1, "permissionAccessInformation":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 23
    .local v2, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->getOp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "op"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->getProxyPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "proxyPackage"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->getProxyAttributionTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "proxyAttributionTag"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->isBackground()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isBackground"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->getAccessTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accessTime"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v1    # "permissionAccessInformation":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    .line 34
    .local v1, "bulkArray":[Landroid/content/ContentValues;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 37
    .local v2, "ident":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/privacydashboard/PermissionAccessInformationWriter;->PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 41
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 38
    :catch_0
    move-exception v4

    .line 39
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    goto :goto_3

    .line 41
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw v4

    .line 44
    .end local v1    # "bulkArray":[Landroid/content/ContentValues;
    .end local v2    # "ident":J
    :cond_1
    :goto_3
    return-void
.end method
