.class Landroid/app/PropertyInvalidatedCache$DefaultComputer;
.super Landroid/app/PropertyInvalidatedCache$QueryHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultComputer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
        "TQuery;TResult;>;"
    }
.end annotation


# instance fields
.field final blacklist mCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PropertyInvalidatedCache<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$QueryHandler;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$DefaultComputer;->mCache:Landroid/app/PropertyInvalidatedCache;

    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$DefaultComputer;->mCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
