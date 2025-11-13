.class public final Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lokio/internal/ZipEntry;

    iget-object p0, p1, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    check-cast p2, Lokio/internal/ZipEntry;

    iget-object p1, p2, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
