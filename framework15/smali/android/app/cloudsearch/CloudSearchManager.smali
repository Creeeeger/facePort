.class public Landroid/app/cloudsearch/CloudSearchManager;
.super Ljava/lang/Object;
.source "CloudSearchManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/CloudSearchManager$CallBack;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$search$0(Landroid/app/cloudsearch/CloudSearchManager$CallBack;Landroid/app/cloudsearch/SearchRequest;)V
    .locals 2

    new-instance v0, Landroid/app/cloudsearch/SearchResponse$Builder;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/cloudsearch/SearchResponse$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/app/cloudsearch/SearchResponse$Builder;->build()Landroid/app/cloudsearch/SearchResponse;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/app/cloudsearch/CloudSearchManager$CallBack;->onSearchFailed(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/SearchResponse;)V

    return-void
.end method


# virtual methods
.method public whitelist search(Landroid/app/cloudsearch/SearchRequest;Ljava/util/concurrent/Executor;Landroid/app/cloudsearch/CloudSearchManager$CallBack;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1}, Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/CloudSearchManager$CallBack;Landroid/app/cloudsearch/SearchRequest;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
