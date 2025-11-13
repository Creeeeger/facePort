.class public final Landroid/util/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# instance fields
.field private final blacklist mImpl:Ldalvik/system/CloseGuard;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/util/CloseGuard;->getImpl()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    return-void
.end method

.method public static blacklist get()Landroid/util/CloseGuard;
    .locals 1

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    return-object v0
.end method

.method private blacklist getImpl()Ldalvik/system/CloseGuard;
    .locals 1

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getImpl$ravenwood()Ldalvik/system/CloseGuard;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist close()V
    .locals 1

    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    return-void
.end method

.method public whitelist open(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist warnIfOpen()V
    .locals 1

    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    return-void
.end method
