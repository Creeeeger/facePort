.class final Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvAdServiceCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;)Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mCallback:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mCallback:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mCallback:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    return-object v0
.end method

.method public blacklist postAdServiceAdded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;-><init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist postAdServiceRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$2;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$2;-><init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist postAdServiceUpdated(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$3;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$3;-><init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
