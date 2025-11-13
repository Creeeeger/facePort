.class public abstract Landroidx/slice/widget/SliceLiveData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sput-object v2, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    return-void
.end method
