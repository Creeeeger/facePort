.class final Landroid/provider/Settings$ContentProviderHolder;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentProviderHolder"
.end annotation


# instance fields
.field private greylist mContentProvider:Landroid/content/IContentProvider;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/provider/Settings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    .line 3115
    iput-object p1, p0, Landroid/provider/Settings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    .line 3116
    return-void
.end method


# virtual methods
.method public greylist-max-o clearProviderForTest()V
    .locals 2

    .line 3129
    iget-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3130
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    .line 3131
    monitor-exit v0

    .line 3132
    return-void

    .line 3131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 3119
    iget-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3120
    :try_start_0
    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    if-nez v1, :cond_0

    .line 3121
    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    .line 3122
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    .line 3124
    :cond_0
    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    monitor-exit v0

    return-object v1

    .line 3125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
