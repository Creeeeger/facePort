.class public abstract Landroid/app/slice/SliceProvider;
.super Landroid/content/ContentProvider;
.source "SliceProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o EXTRA_BIND_URI:Ljava/lang/String; = "slice_uri"

.field public static final greylist-max-o EXTRA_INTENT:Ljava/lang/String; = "slice_intent"

.field public static final greylist-max-o EXTRA_PKG:Ljava/lang/String; = "pkg"

.field public static final greylist-max-o EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final greylist-max-o EXTRA_SLICE:Ljava/lang/String; = "slice"

.field public static final greylist-max-o EXTRA_SLICE_DESCENDANTS:Ljava/lang/String; = "slice_descendants"

.field public static final greylist-max-o EXTRA_SUPPORTED_SPECS:Ljava/lang/String; = "supported_specs"

.field public static final greylist-max-o METHOD_GET_DESCENDANTS:Ljava/lang/String; = "get_descendants"

.field public static final greylist-max-o METHOD_GET_PERMISSIONS:Ljava/lang/String; = "get_permissions"

.field public static final greylist-max-o METHOD_MAP_INTENT:Ljava/lang/String; = "map_slice"

.field public static final greylist-max-o METHOD_MAP_ONLY_INTENT:Ljava/lang/String; = "map_only"

.field public static final greylist-max-o METHOD_PIN:Ljava/lang/String; = "pin"

.field public static final greylist-max-o METHOD_SLICE:Ljava/lang/String; = "bind_slice"

.field public static final greylist-max-o METHOD_UNPIN:Ljava/lang/String; = "unpin"

.field private static final greylist-max-o SLICE_BIND_ANR:J = 0x7d0L

.field public static final whitelist SLICE_TYPE:Ljava/lang/String; = "vnd.android.slice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceProvider"


# instance fields
.field private final greylist-max-o mAnr:Ljava/lang/Runnable;

.field private final greylist-max-o mAutoGrantPermissions:[Ljava/lang/String;

.field private greylist-max-o mCallback:Ljava/lang/String;

.field private greylist-max-o mSliceManager:Landroid/app/slice/SliceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$KEjm38pZ15vH2YxxnDw7rsgFj_s(Landroid/app/slice/SliceProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/slice/SliceProvider;->lambda$new$0()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/slice/SliceProvider;)V

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor whitelist <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/slice/SliceProvider;)V

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    return-void
.end method

.method public static blacklist createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.REQUEST_SLICE_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "slice_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist createPermissionPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    nop

    invoke-static {p0, p1, p2}, Landroid/app/slice/SliceProvider;->createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040e9b

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown calling app"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private greylist-max-o handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    :try_start_0
    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    invoke-virtual {v1, p1, p5, p4, v2}, Landroid/app/slice/SliceManager;->enforceSlicePermission(Landroid/net/Uri;II[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string/jumbo v1, "onBindSlice"

    iput-object v1, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/app/slice/SliceProvider;->onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0}, Landroid/app/slice/SliceProvider;->createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "onGetSliceDescendants"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o handlePinSlice(Landroid/net/Uri;)V
    .locals 4

    const-string/jumbo v0, "onSlicePinned"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private greylist-max-o handleUnpinSlice(Landroid/net/Uri;)V
    .locals 4

    const-string/jumbo v0, "onSliceUnpinned"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private synthetic blacklist lambda$new$0()V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out while handling slice callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SliceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-o onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private blacklist validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const-string v0, "bind_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "supported_specs"

    const-string/jumbo v2, "slice"

    const-string/jumbo v3, "slice_uri"

    if-eqz v0, :cond_0

    const-class v0, Landroid/net/Uri;

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-class v3, Landroid/app/slice/SliceSpec;

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v9

    move v7, v10

    move v8, v11

    invoke-direct/range {v3 .. v8}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v4

    :cond_0
    const-string/jumbo v0, "map_slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v4, "slice_intent"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    const-class v0, Landroid/content/Intent;

    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const-class v4, Landroid/app/slice/SliceSpec;

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    move-object v6, p0

    move-object v7, v3

    move-object v8, v1

    invoke-direct/range {v6 .. v11}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    return-object v4

    :cond_3
    const-string/jumbo v0, "map_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Landroid/content/Intent;

    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_4

    return-object v5

    :cond_4
    invoke-virtual {p0, v0}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v3

    :cond_5
    const-string/jumbo v0, "pin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Only the system can pin/unpin slices"

    const/16 v2, 0x3e8

    if-eqz v0, :cond_7

    const-class v0, Landroid/net/Uri;

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handlePinSlice(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_6
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string/jumbo v0, "unpin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-class v0, Landroid/net/Uri;

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v3, v2, :cond_8

    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handleUnpinSlice(Landroid/net/Uri;)V

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string v0, "get_descendants"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Landroid/net/Uri;

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v3, "slice_descendants"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1

    :cond_a
    const-string v0, "get_permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, v2, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result"

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system can get permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;
    .locals 10

    const-string/jumbo v0, "onCreatePermissionRequest"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/app/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    nop

    new-instance v1, Landroid/app/slice/Slice$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    new-instance v3, Landroid/app/slice/Slice$Builder;

    invoke-direct {v3, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    const v4, 0x108059b

    invoke-static {p1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    const-string/jumbo v4, "title"

    const-string/jumbo v5, "shortcut"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    new-instance v4, Landroid/app/slice/Slice$Builder;

    invoke-direct {v4, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    invoke-virtual {v4}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x103012b

    invoke-direct {v5, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010435

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "permission"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Landroid/app/slice/Slice$Builder;

    invoke-direct {v7, v6, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    const v8, 0x108039c

    invoke-static {p1, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v8, v2, v9}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v7

    invoke-static {p1, p3}, Landroid/app/slice/SliceProvider;->getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v8, v2, v9}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const-string v9, "color"

    invoke-virtual {v7, v5, v9, v8}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    const-string/jumbo v2, "permission_request"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v2

    return-object v2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vnd.android.slice"

    return-object v0
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 2

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/slice/SliceProvider;->createPermissionPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This provider has not implemented intent to uri mapping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onSlicePinned(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public whitelist onSliceUnpinned(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
