.class public abstract Landroidx/slice/builders/impl/TemplateBuilderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mClock:Landroidx/slice/SystemClock;

.field public final mSliceBuilder:Landroidx/slice/Slice$Builder;

.field public final mSpec:Landroidx/slice/SliceSpec;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 1

    new-instance v0, Landroidx/slice/SystemClock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/SystemClock;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    iput-object p2, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSpec:Landroidx/slice/SliceSpec;

    iput-object p3, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mClock:Landroidx/slice/SystemClock;

    return-void
.end method

.method public static parseImageMode(IZ)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    const-string/jumbo v1, "show_label"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p0, :cond_1

    const-string v1, "no_tint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p0, v1, :cond_2

    if-ne p0, v2, :cond_3

    :cond_2
    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    if-ne p0, v2, :cond_5

    :cond_4
    const-string p0, "raw"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_6

    const-string p0, "partial"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method


# virtual methods
.method public abstract apply(Landroidx/slice/Slice$Builder;)V
.end method

.method public build()Landroidx/slice/Slice;
    .locals 2

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    iget-object v1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSpec:Landroidx/slice/SliceSpec;

    iput-object v1, v0, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method
