.class public abstract Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final API_VERSION:Ljava/lang/String; = "2.0.0"

.field private static final MATCH_SEARCH_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SamsungSearchProvider"


# instance fields
.field private mInfo:Landroid/content/pm/ProviderInfo;

.field private mMatcher:Landroid/content/UriMatcher;

.field private mProviderKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private final getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "2.0.0"

    return-object p0
.end method

.method private final getModuleIconInternal()Landroid/graphics/drawable/Icon;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getModuleIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    iget v0, v0, Landroid/content/pm/ProviderInfo;->icon:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    iget p0, p0, Landroid/content/pm/ProviderInfo;->icon:I

    invoke-static {v0, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    invoke-static {v1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Fail to get Icon from AppLaunchIntent"

    :try_start_1
    const-string v2, "SamSearch_SamsungSearchProvider"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0}, Landroid/content/pm/ProviderInfo;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p0}, Landroid/content/pm/ProviderInfo;->getIconResource()I

    move-result p0

    invoke-static {v0, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "android"

    const v0, 0x1080093

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method private final getModuleLabelInternal()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getModuleLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    iget v1, v0, Landroid/content/pm/ProviderInfo;->labelRes:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Fail to get Label from AppLaunchIntent"

    :try_start_1
    const-string v2, "SamSearch_SamsungSearchProvider"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private isSupportSearch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    iput-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string/jumbo v2, "v1/search"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_3

    const-string v0, "com.samsung.android.provider.indexing.permission.ACCESS_PROVIDER"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getModuleKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getModuleKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mProviderKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->isSupportSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "One or more features must be supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This key should be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must be protected by READ_SEARCH_INDEXABLES"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must grantUriPermissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must be exported"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "call method: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SamsungSearchProvider"

    invoke-static {v0, p2}, Lcom/samsung/android/lib/galaxyfinder/search/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "getInfo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p1, "module_key"

    iget-object p2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mProviderKey:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "api_version"

    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getApiVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "label"

    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getModuleLabelInternal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "icon"

    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getModuleIconInternal()Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "launchIntent"

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "legacySearchActivity"

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getLegacySearchActivity()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "inAppSearchActivity"

    invoke-virtual {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->makeInAppSearchIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p3
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Delete not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLegacySearchActivity()Landroid/content/ComponentName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModuleIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModuleKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mInfo:Landroid/content/pm/ProviderInfo;

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleLabel()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSearchResult(Ljava/lang/String;ILandroid/os/CancellationSignal;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "vnd.android.cursor.dir/vnd.search"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown URI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Insert not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract makeAppLaunchIntent()Landroid/content/Intent;
.end method

.method public abstract makeInAppSearchIntent()Landroid/content/Intent;
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SamSearch_SamsungSearchProvider"

    iget-object v3, v0, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->isSupportSearch()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v5, "query"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v3

    :goto_0
    const-string/jumbo v6, "requestId"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_1
    const-string v7, "limit"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v1, -0x1

    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v6, p6

    :try_start_2
    invoke-virtual {v0, v5, v1, v6}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;->getSearchResult(Ljava/lang/String;ILandroid/os/CancellationSignal;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v0, :cond_1

    const-string v0, "SearchResult is NULL"

    :try_start_3
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    new-instance v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {v0, v5}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    :cond_1
    const-string v15, "action3_label"

    const-string v16, "action3_payload"

    const-string v5, "key"

    const-string v6, "icon"

    const-string/jumbo v7, "text"

    const-string/jumbo v8, "text2"

    const-string v9, "group"

    const-string/jumbo v10, "view_payload"

    const-string v11, "action1_label"

    const-string v12, "action1_payload"

    const-string v13, "action2_label"

    const-string v14, "action2_payload"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getItemColumns()[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/16 v6, 0xc

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v5, v2

    const/4 v7, 0x0

    invoke-static {v2, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->getResultType()Ljava/lang/String;

    move-result-object v2

    iget v5, v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->totalCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "2.0.0"

    iget-object v9, v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->query:Ljava/lang/String;

    const-string v10, "1"

    filled-new-array {v8, v9, v2, v10, v5}, [Ljava/lang/String;

    move-result-object v2

    array-length v5, v1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->mItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;

    iget-object v8, v2, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->itemKey:Ljava/lang/String;

    iget-object v9, v2, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->icon:Landroid/net/Uri;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    move-object v9, v3

    :goto_3
    invoke-virtual {v2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getGroup()Ljava/lang/String;

    move-result-object v12

    iget-object v10, v2, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->payload:Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->getStringFromPayload()Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    goto :goto_4

    :cond_3
    move-object v13, v3

    :goto_4
    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionLabel(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionPayloadStr(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionLabel(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionPayloadStr(I)Ljava/lang/String;

    move-result-object v17

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionLabel(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2, v10}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->getActionPayloadStr(I)Ljava/lang/String;

    move-result-object v19

    iget-object v10, v2, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->text:Ljava/lang/String;

    iget-object v11, v2, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;->text2:Ljava/lang/String;

    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;

    move-result-object v2

    array-length v9, v2

    add-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    array-length v9, v2

    invoke-static {v2, v7, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-object v5

    :catch_3
    move-exception v0

    move-object v1, v0

    const-string v0, "SearchResult is fail"

    :try_start_4
    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_5
    :goto_5
    return-object v3

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported Uri "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Uri "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Update not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
