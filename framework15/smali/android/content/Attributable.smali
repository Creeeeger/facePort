.class public interface abstract Landroid/content/Attributable;
.super Ljava/lang/Object;
.source "Attributable.java"


# direct methods
.method public static blacklist setAttributionSource(Landroid/content/Attributable;Landroid/content/AttributionSource;)Landroid/content/Attributable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/content/Attributable;",
            ">(TT;",
            "Landroid/content/AttributionSource;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/Attributable;->setAttributionSource(Landroid/content/AttributionSource;)V

    :cond_0
    return-object p0
.end method

.method public static blacklist setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/content/Attributable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Attributable;

    invoke-static {v2, p1}, Landroid/content/Attributable;->setAttributionSource(Landroid/content/Attributable;Landroid/content/AttributionSource;)Landroid/content/Attributable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract blacklist setAttributionSource(Landroid/content/AttributionSource;)V
.end method
