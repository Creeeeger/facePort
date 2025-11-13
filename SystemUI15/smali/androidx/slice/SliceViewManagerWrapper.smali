.class public final Landroidx/slice/SliceViewManagerWrapper;
.super Landroidx/slice/SliceViewManagerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCachedAuthorities:Landroidx/collection/ArrayMap;

.field public final mCachedSuspendFlags:Landroidx/collection/ArrayMap;

.field public final mManager:Landroid/app/slice/SliceManager;

.field public final mSpecs:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    invoke-direct {p0, p1, v0}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedSuspendFlags:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedAuthorities:Landroidx/collection/ArrayMap;

    iput-object p2, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    sget-object p1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    new-instance p2, Landroidx/collection/ArraySet;

    invoke-direct {p2}, Landroidx/collection/ArraySet;-><init>()V

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/collection/ArraySet$ElementIterator;

    invoke-direct {v0, p1}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceSpec;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/app/slice/SliceSpec;

    iget-object v2, p1, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    iget p1, p1, Landroidx/slice/SliceSpec;->mRevision:I

    invoke-direct {v1, v2, p1}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    move-object p1, v1

    :goto_1
    invoke-virtual {p2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p2, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    return-void
.end method


# virtual methods
.method public final bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isAuthoritySuspended(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/content/Intent;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object p1

    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public final bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/SliceViewManagerWrapper;->isAuthoritySuspended(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object p1

    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public final isAuthoritySuspended(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedAuthorities:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/slice/SliceViewManagerWrapper;->isPackageSuspended(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageSuspended(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedSuspendFlags:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr p0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_1

    :catch_0
    return v1

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final pinSlice(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->pinSlice(Landroid/net/Uri;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No provider found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method

.method public final unpinSlice(Landroid/net/Uri;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {p0, p1}, Landroid/app/slice/SliceManager;->unpinSlice(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
