.class public final Landroidx/slice/widget/SliceLiveData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SUPPORTED_SPECS:Landroidx/collection/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.app.slice.BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroidx/slice/SliceSpec;

    const-string v3, "androidx.app.slice.LIST"

    invoke-direct {v1, v3, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroidx/collection/ArraySet;

    sget-object v3, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    sget-object v4, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    sget-object v5, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    filled-new-array {v3, v4, v5, v0, v1}, [Landroidx/slice/SliceSpec;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v2, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
