.class public Lcom/samsung/android/sume/core/types/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist MAXNUM_VERSION_UNITS:I = 0x3


# instance fields
.field private final blacklist major:I

.field private final blacklist minor:I

.field private final blacklist patch:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "major"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "major"
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/sume/core/types/Version;-><init>(III)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "major",
            "minor"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sume/core/types/Version;-><init>(III)V

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "major",
            "minor",
            "patch"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/samsung/android/sume/core/types/Version;->major:I

    .line 22
    iput p2, p0, Lcom/samsung/android/sume/core/types/Version;->minor:I

    .line 23
    iput p3, p0, Lcom/samsung/android/sume/core/types/Version;->patch:I

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "^[^0-9]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda0;-><init>()V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 37
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    .local v0, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    new-array v5, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "version should be given major.{minor}.{patch} format(ex: 1, 1.0, 1.0.0)"

    invoke-static {v1, v6, v5}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v3, v1

    new-array v1, v3, [Ljava/lang/Integer;

    .line 43
    .local v1, "additional":[Ljava/lang/Integer;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 46
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 48
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sume/core/types/Version;->major:I

    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sume/core/types/Version;->minor:I

    .line 50
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sume/core/types/Version;->patch:I

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist getMajor()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/samsung/android/sume/core/types/Version;->major:I

    return v0
.end method

.method public blacklist getMinor()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/samsung/android/sume/core/types/Version;->minor:I

    return v0
.end method

.method public blacklist getPatch()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/android/sume/core/types/Version;->patch:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/sume/core/types/Version;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sume/core/types/Version;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/sume/core/types/Version;->patch:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%d.%d.%d"

    invoke-static {v1, v0}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
