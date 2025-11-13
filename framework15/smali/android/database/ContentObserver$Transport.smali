.class final Landroid/database/ContentObserver$Transport;
.super Landroid/database/IContentObserver$Stub;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field private greylist-max-o mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/database/ContentObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    iput-object p1, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public greylist-max-o onChange(ZLandroid/net/Uri;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/database/ContentObserver$Transport;->onChangeEtc(Z[Landroid/net/Uri;II)V

    return-void
.end method

.method public blacklist onChangeEtc(Z[Landroid/net/Uri;II)V
    .locals 2

    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/database/ContentObserver;->dispatchChange(ZLjava/util/Collection;II)V

    :cond_0
    return-void
.end method

.method public greylist-max-o releaseContentObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method
