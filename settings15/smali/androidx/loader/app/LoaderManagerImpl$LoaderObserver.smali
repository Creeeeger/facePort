.class public final Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

.field public mDeliveredData:Z

.field public final mLoader:Landroidx/loader/content/Loader;


# direct methods
.method public constructor <init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-interface {v0, p0, p1}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
