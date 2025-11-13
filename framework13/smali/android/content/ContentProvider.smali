.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ContentInterface;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$PipeDataWriter;,
        Landroid/content/ContentProvider$CallingIdentity;,
        Landroid/content/ContentProvider$Transport;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private greylist-max-r mAuthorities:[Ljava/lang/String;

.field private greylist mAuthority:Ljava/lang/String;

.field private blacklist mCallingAttributionSource:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/AttributionSource;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mContext:Landroid/content/Context;

.field private greylist-max-o mExported:Z

.field private greylist-max-o mMyUid:I

.field private greylist-max-o mNoPerms:Z

.field private greylist mPathPermissions:[Landroid/content/pm/PathPermission;

.field private greylist mReadPermission:Ljava/lang/String;

.field private greylist-max-o mSingleUser:Z

.field private greylist-max-o mTransport:Landroid/content/ContentProvider$Transport;

.field private blacklist mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

.field private greylist mWritePermission:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmReadPermission(Landroid/content/ContentProvider;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritePermission(Landroid/content/ContentProvider;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/ContentProvider;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    .line 158
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 176
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    .line 158
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 197
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 200
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 201
    return-void
.end method

.method private greylist-max-o attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "testing"    # Z

    .line 2496
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 2497
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    .line 2503
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 2504
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2505
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    .line 2506
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2509
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 2510
    if-eqz p2, :cond_2

    .line 2511
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 2512
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 2513
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 2514
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 2515
    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    .line 2516
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    .line 2518
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    .line 2519
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setTransportLoggingEnabled(Z)V

    .line 2522
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 2524
    :cond_4
    return-void
.end method

.method private blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 799
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 800
    const/4 v0, 0x0

    return v0

    .line 802
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/AttributionSource;

    .line 803
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 v3, 0x0

    .line 802
    invoke-static {v0, p1, v1, v2, v3}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 1
    .param p0, "abstractInterface"    # Landroid/content/IContentProvider;

    .line 219
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    .line 220
    move-object v0, p0

    check-cast v0, Landroid/content/ContentProvider$Transport;

    invoke-virtual {v0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist createContentUriForUser(Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;
    .locals 5
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2769
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2774
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2775
    .local v0, "userId":I
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2776
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2777
    return-object p0

    .line 2779
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 2782
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    .line 2779
    const-string v1, "Given URI [%s] already has a user ID, different from given user handle [%s]"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2785
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2786
    .local v1, "builder":Landroid/net/Uri$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2787
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2786
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2788
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2770
    .end local v0    # "userId":I
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v1, "Given URI [%s] is not a content URI: "

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "auth"    # Ljava/lang/String;

    .line 2730
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2731
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2732
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2737
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2738
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2739
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2740
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getUserHandleFromUri(Landroid/net/Uri;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2720
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getUserIdFromAuthority(Ljava/lang/String;)I
    .locals 1
    .param p0, "auth"    # Ljava/lang/String;

    .line 2699
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getUserIdFromAuthority(Ljava/lang/String;I)I
    .locals 5
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "defaultUserId"    # I

    .line 2685
    if-nez p0, :cond_0

    return p1

    .line 2686
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2687
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    .line 2688
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2690
    .local v1, "userIdString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 2691
    :catch_0
    move-exception v2

    .line 2692
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ContentProvider"

    const-string v4, "Error parsing userId."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2693
    const/16 v3, -0x2710

    return v3
.end method

.method public static greylist-max-o getUserIdFromUri(Landroid/net/Uri;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2710
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getUserIdFromUri(Landroid/net/Uri;I)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "defaultUserId"    # I

    .line 2704
    if-nez p0, :cond_0

    return p1

    .line 2705
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "authority"    # Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 2794
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2795
    :cond_0
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    .line 2796
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2797
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2799
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2800
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2801
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2804
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    return-object p0
.end method

.method private greylist-max-o maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2677
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v0, :cond_0

    .line 2678
    return-object p1

    .line 2680
    :cond_0
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 2
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1061
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1062
    .local v0, "original":Landroid/content/AttributionSource;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1063
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCallingPackageChanged()V

    .line 1064
    return-object v0
.end method

.method private static blacklist traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "subInfo"    # Ljava/lang/String;

    .line 2808
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2811
    :cond_0
    return-void
.end method

.method public static greylist-max-o uriHasUserId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2745
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2746
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist validateIncomingAuthority(Ljava/lang/String;)V
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2631
    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The authority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not match the one of the contentProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2634
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2637
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2639
    :goto_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2641
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 2547
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 2553
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2554
    .local v0, "numOperations":I
    new-array v1, v0, [Landroid/content/ContentProviderResult;

    .line 2555
    .local v1, "results":[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2556
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v1, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2558
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 2492
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 2493
    return-void
.end method

.method public greylist-max-r attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 2481
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 2482
    return-void
.end method

.method public whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 1839
    array-length v0, p2

    .line 1840
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1841
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1840
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1843
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2587
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2582
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .line 1684
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;II)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1762
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o checkUser(IILandroid/content/Context;)Z
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 747
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 749
    .local v0, "callingUserId":I
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v1, :cond_7

    .line 750
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eqz v1, :cond_7

    .line 751
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 754
    :cond_1
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_6

    .line 756
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 761
    :cond_2
    iget-object v1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 762
    iget-object v1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 763
    iget-object v1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1

    .line 768
    :cond_3
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 769
    .local v1, "callingUser":Landroid/os/UserHandle;
    iget-object v4, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5, v3, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 771
    .local v4, "callingUserContext":Landroid/content/Context;
    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 773
    .local v5, "um":Landroid/os/UserManager;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/os/UserManager;->isCloneProfile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 774
    invoke-virtual {v5, v1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v6

    .line 776
    .local v6, "parent":Landroid/os/UserHandle;
    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 777
    iget-object v7, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    return v2

    .line 783
    .end local v1    # "callingUser":Landroid/os/UserHandle;
    .end local v4    # "callingUserContext":Landroid/content/Context;
    .end local v5    # "um":Landroid/os/UserManager;
    .end local v6    # "parent":Landroid/os/UserHandle;
    :cond_4
    goto :goto_0

    .line 781
    :catch_0
    move-exception v1

    .line 785
    :goto_0
    iget-object v1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 786
    return v3

    .line 789
    :cond_5
    return v3

    .line 758
    :cond_6
    :goto_1
    return v2

    .line 752
    :cond_7
    :goto_2
    return v2
.end method

.method public final whitelist clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;
    .locals 4

    .line 1193
    new-instance v0, Landroid/content/ContentProvider$CallingIdentity;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1194
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/content/ContentProvider;->setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/content/ContentProvider$CallingIdentity;-><init>(Landroid/content/ContentProvider;JLandroid/content/AttributionSource;)V

    .line 1193
    return-object v0
.end method

.method public whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1902
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    move-object p2, v0

    .line 1903
    nop

    .line 1904
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1905
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1903
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2627
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    return-void
.end method

.method protected blacklist enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 843
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 844
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 845
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 846
    .local v5, "uid":I
    const/4 v6, 0x0

    .line 847
    .local v6, "missingPerm":Ljava/lang/String;
    const/4 v7, 0x0

    .line 849
    .local v7, "strongestResult":I
    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 850
    return v9

    .line 853
    :cond_0
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_8

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 854
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v8

    .line 855
    .local v8, "componentPerm":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 856
    invoke-direct {v0, v8, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v11

    .line 857
    .local v11, "result":I
    if-nez v11, :cond_1

    .line 858
    return v9

    .line 860
    :cond_1
    move-object v6, v8

    .line 861
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 867
    .end local v11    # "result":I
    :cond_2
    if-nez v8, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    move v11, v9

    .line 869
    .local v11, "allowDefaultRead":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v12

    .line 870
    .local v12, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v12, :cond_7

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 872
    .local v13, "path":Ljava/lang/String;
    array-length v14, v12

    move v15, v9

    :goto_1
    if-ge v15, v14, :cond_6

    aget-object v10, v12, v15

    .line 873
    .local v10, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v10}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v9

    .line 874
    .local v9, "pathPerm":Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-virtual {v10, v13}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 875
    move-object/from16 v16, v6

    .end local v6    # "missingPerm":Ljava/lang/String;
    .local v16, "missingPerm":Ljava/lang/String;
    invoke-direct {v0, v9, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v6

    .line 876
    .local v6, "result":I
    if-nez v6, :cond_4

    .line 877
    const/4 v14, 0x0

    return v14

    .line 881
    :cond_4
    const/4 v11, 0x0

    .line 882
    move-object/from16 v16, v9

    .line 883
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v6, v16

    goto :goto_2

    .line 874
    .end local v16    # "missingPerm":Ljava/lang/String;
    .local v6, "missingPerm":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v6

    .line 872
    .end local v6    # "missingPerm":Ljava/lang/String;
    .end local v9    # "pathPerm":Ljava/lang/String;
    .end local v10    # "pp":Landroid/content/pm/PathPermission;
    .restart local v16    # "missingPerm":Ljava/lang/String;
    move-object/from16 v6, v16

    .end local v16    # "missingPerm":Ljava/lang/String;
    .restart local v6    # "missingPerm":Ljava/lang/String;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v16, v6

    .line 891
    .end local v13    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_8

    const/4 v9, 0x0

    return v9

    .line 895
    .end local v8    # "componentPerm":Ljava/lang/String;
    .end local v11    # "allowDefaultRead":Z
    .end local v12    # "pps":[Landroid/content/pm/PathPermission;
    :cond_8
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 896
    .local v8, "callingUserId":I
    iget-boolean v9, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v9, :cond_9

    iget v9, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v9, v5}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v9

    if-nez v9, :cond_9

    .line 897
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    :cond_9
    move-object v9, v1

    .line 898
    .local v9, "userUri":Landroid/net/Uri;
    :goto_3
    const/4 v10, 0x1

    invoke-virtual {v3, v9, v4, v5, v10}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v11

    if-nez v11, :cond_a

    .line 900
    const/4 v10, 0x0

    return v10

    .line 905
    :cond_a
    if-ne v7, v10, :cond_b

    .line 906
    return v10

    .line 910
    :cond_b
    iget-object v10, v0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    const-string v11, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 912
    iget-boolean v10, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v10, :cond_c

    .line 913
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " requires "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", or grantUriPermission()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "suffix":Ljava/lang/String;
    goto :goto_4

    .line 915
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_c
    const-string v10, " requires the provider be exported, or grantUriPermission()"

    .restart local v10    # "suffix":Ljava/lang/String;
    goto :goto_4

    .line 911
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_d
    const-string v10, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .line 917
    .restart local v10    # "suffix":Ljava/lang/String;
    :goto_4
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 918
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uri "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method protected blacklist enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 958
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 959
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 960
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 961
    .local v5, "uid":I
    const/4 v6, 0x0

    .line 962
    .local v6, "missingPerm":Ljava/lang/String;
    const/4 v7, 0x0

    .line 964
    .local v7, "strongestResult":I
    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 965
    return v9

    .line 968
    :cond_0
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_8

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 969
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v8

    .line 970
    .local v8, "componentPerm":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 971
    invoke-direct {v0, v8, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v11

    .line 972
    .local v11, "mode":I
    if-nez v11, :cond_1

    .line 973
    return v9

    .line 975
    :cond_1
    move-object v6, v8

    .line 976
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 982
    .end local v11    # "mode":I
    :cond_2
    if-nez v8, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    move v11, v9

    .line 984
    .local v11, "allowDefaultWrite":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v12

    .line 985
    .local v12, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v12, :cond_7

    .line 986
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 987
    .local v13, "path":Ljava/lang/String;
    array-length v14, v12

    move v15, v9

    :goto_1
    if-ge v15, v14, :cond_6

    aget-object v10, v12, v15

    .line 988
    .local v10, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v10}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v9

    .line 989
    .local v9, "pathPerm":Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-virtual {v10, v13}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 990
    move-object/from16 v16, v6

    .end local v6    # "missingPerm":Ljava/lang/String;
    .local v16, "missingPerm":Ljava/lang/String;
    invoke-direct {v0, v9, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v6

    .line 991
    .local v6, "mode":I
    if-nez v6, :cond_4

    .line 992
    const/4 v14, 0x0

    return v14

    .line 996
    :cond_4
    const/4 v11, 0x0

    .line 997
    move-object/from16 v16, v9

    .line 998
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v6, v16

    goto :goto_2

    .line 989
    .end local v16    # "missingPerm":Ljava/lang/String;
    .local v6, "missingPerm":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v6

    .line 987
    .end local v6    # "missingPerm":Ljava/lang/String;
    .end local v9    # "pathPerm":Ljava/lang/String;
    .end local v10    # "pp":Landroid/content/pm/PathPermission;
    .restart local v16    # "missingPerm":Ljava/lang/String;
    move-object/from16 v6, v16

    .end local v16    # "missingPerm":Ljava/lang/String;
    .restart local v6    # "missingPerm":Ljava/lang/String;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v16, v6

    .line 1006
    .end local v13    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_8

    const/4 v9, 0x0

    return v9

    .line 1010
    .end local v8    # "componentPerm":Ljava/lang/String;
    .end local v11    # "allowDefaultWrite":Z
    .end local v12    # "pps":[Landroid/content/pm/PathPermission;
    :cond_8
    const/4 v8, 0x2

    invoke-virtual {v3, v1, v4, v5, v8}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v8

    if-nez v8, :cond_9

    .line 1012
    const/4 v8, 0x0

    return v8

    .line 1017
    :cond_9
    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 1018
    return v8

    .line 1021
    :cond_a
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_b

    .line 1022
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " requires "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", or grantUriPermission()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 1023
    :cond_b
    const-string v8, " requires the provider be exported, or grantUriPermission()"

    :goto_3
    nop

    .line 1024
    .local v8, "failReason":Ljava/lang/String;
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: writing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1025
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public greylist-max-o getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 1320
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final whitelist getCallingAttributionSource()Landroid/content/AttributionSource;
    .locals 4

    .line 1100
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1101
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_0

    .line 1102
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1103
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1102
    invoke-virtual {v1, v2, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1105
    :cond_0
    return-object v0
.end method

.method public final whitelist getCallingAttributionTag()Ljava/lang/String;
    .locals 2

    .line 1119
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1120
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1123
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final greylist getCallingFeatureId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1131
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getCallingPackage()Ljava/lang/String;
    .locals 2

    .line 1082
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1083
    .local v0, "callingAttributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1083
    :goto_0
    return-object v1
.end method

.method public final whitelist getCallingPackageUnchecked()Ljava/lang/String;
    .locals 2

    .line 1147
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1148
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1151
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 1035
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .line 2471
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final whitelist getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    .line 1306
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final whitelist getReadPermission()Ljava/lang/String;
    .locals 1

    .line 1262
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 2268
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final whitelist getWritePermission()Ljava/lang/String;
    .locals 1

    .line 1284
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1819
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist isTemporary()Z
    .locals 1

    .line 2460
    const/4 v0, 0x0

    return v0
.end method

.method protected final greylist-max-o matchesOurAuthorities(Ljava/lang/String;)Z
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 1230
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1233
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1234
    array-length v0, v0

    .line 1235
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1236
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 1235
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1239
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCallingPackageChanged()V
    .locals 0

    .line 1163
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1374
    return-void
.end method

.method public abstract whitelist onCreate()Z
.end method

.method public whitelist onLowMemory()V
    .locals 0

    .line 1386
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 1390
    return-void
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2144
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 2145
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_0

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2205
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2022
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2091
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final whitelist openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2221
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2222
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2223
    .local v2, "count":I
    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 2226
    if-eqz v1, :cond_1

    .line 2227
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2229
    :cond_1
    if-nez v2, :cond_2

    .line 2230
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2232
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple items at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2235
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2236
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2237
    .local v0, "i":I
    if-ltz v0, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 2238
    .local v3, "path":Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2239
    if-eqz v3, :cond_5

    .line 2243
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v4

    .line 2244
    .local v4, "modeBits":I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    return-object v5

    .line 2240
    .end local v4    # "modeBits":I
    :cond_5
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "Column _data not found."

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2433
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2435
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v9, Landroid/content/ContentProvider$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p5

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v1, v9

    .line 2447
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2449
    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2450
    .end local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 2451
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2318
    const-string v0, "*/*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "r"

    if-eqz v0, :cond_0

    .line 2320
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 2322
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2323
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2326
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 2328
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2387
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1613
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    move-object p3, v0

    .line 1617
    const-string v0, "android:query-arg-sql-sort-order"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, "sortClause":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1619
    invoke-static {p3}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 1622
    :cond_1
    nop

    .line 1625
    const-string v1, "android:query-arg-sql-selection"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1626
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1622
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1526
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1736
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1778
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist requireContext()Landroid/content/Context;
    .locals 3

    .line 1048
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1049
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1052
    return-object v0

    .line 1050
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find context from the provider."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V
    .locals 2
    .param p1, "identity"    # Landroid/content/ContentProvider$CallingIdentity;

    .line 1205
    iget-wide v0, p1, Landroid/content/ContentProvider$CallingIdentity;->binderToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1206
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    iget-object v1, p1, Landroid/content/ContentProvider$CallingIdentity;->callingAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1207
    return-void
.end method

.method protected whitelist semEnforceReadPermission(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 836
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method

.method protected whitelist semEnforceReadPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 819
    const/4 v0, 0x2

    return v0
.end method

.method protected whitelist semEnforceWritePermission(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 951
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method

.method protected whitelist semEnforceWritePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 934
    const/4 v0, 0x2

    return v0
.end method

.method public final greylist setAppOps(II)V
    .locals 1
    .param p1, "readOp"    # I
    .param p2, "writeOp"    # I

    .line 1312
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_0

    .line 1313
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 1314
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 1316
    :cond_0
    return-void
.end method

.method protected final greylist-max-o setAuthorities(Ljava/lang/String;)V
    .locals 3
    .param p1, "authorities"    # Ljava/lang/String;

    .line 1217
    if-eqz p1, :cond_1

    .line 1218
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1219
    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 1220
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_0

    .line 1222
    :cond_0
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 1223
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    .line 1226
    :cond_1
    :goto_0
    return-void
.end method

.method protected final whitelist setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0
    .param p1, "permissions"    # [Landroid/content/pm/PathPermission;

    .line 1295
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 1296
    return-void
.end method

.method protected final whitelist setReadPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .line 1251
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 1252
    return-void
.end method

.method public final blacklist setTransportLoggingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1325
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-nez v0, :cond_0

    .line 1326
    return-void

    .line 1328
    :cond_0
    if-eqz p1, :cond_1

    .line 1329
    new-instance v1, Landroid/content/LoggingContentInterface;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/content/LoggingContentInterface;-><init>(Ljava/lang/String;Landroid/content/ContentInterface;)V

    iput-object v1, v0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    goto :goto_0

    .line 1331
    :cond_1
    iput-object p0, v0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 1333
    :goto_0
    return-void
.end method

.method protected final whitelist setWritePermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .line 1273
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 1274
    return-void
.end method

.method public whitelist shutdown()V
    .locals 2

    .line 2613
    const-string v0, "ContentProvider"

    const-string v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    return-void
.end method

.method public whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;

    .line 1703
    return-object p1
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1952
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    move-object p3, v0

    .line 1953
    nop

    .line 1954
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1955
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1953
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public blacklist validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2646
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2647
    .local v0, "auth":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v1, :cond_2

    .line 2648
    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v2

    .line 2650
    .local v2, "userId":I
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2651
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2653
    .local v3, "isCloneProfileAccessAllowed":Z
    :goto_0
    if-eq v2, v1, :cond_2

    iget-object v1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v2, v1, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2655
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trying to query a ContentProvider in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2656
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a uri belonging to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2659
    .end local v2    # "userId":I
    .end local v3    # "isCloneProfileAccessAllowed":Z
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 2664
    .local v1, "encodedPath":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 2665
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 2666
    const-string v3, "//+"

    const-string v4, "/"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2667
    .local v2, "normalized":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Normalized "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to avoid possible security issues"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    return-object v2

    .line 2671
    .end local v2    # "normalized":Landroid/net/Uri;
    :cond_3
    return-object p1
.end method
