.class public interface abstract Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
.super Ljava/lang/Object;
.source "MediaFilterGroup.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# virtual methods
.method public abstract blacklist addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/MediaFilterGroup;"
        }
    .end annotation
.end method

.method public varargs blacklist addFilter([Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterGroup;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    return-object p0
.end method

.method public varargs abstract blacklist removeFilter([Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
.end method

.method public abstract blacklist replaceFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Z
.end method
