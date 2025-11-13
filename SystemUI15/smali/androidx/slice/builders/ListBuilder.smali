.class public final Landroidx/slice/builders/ListBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mImpl:Landroidx/slice/builders/impl/ListBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, p3, p4}, Landroidx/slice/builders/impl/ListBuilder;->setTtl(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/time/Duration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, p3}, Landroidx/slice/builders/impl/ListBuilder;->setTtl(Ljava/time/Duration;)V

    return-void
.end method


# virtual methods
.method public final selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 3

    sget-object v0, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v1

    iget-object v2, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    if-eqz v1, :cond_0

    new-instance p0, Landroidx/slice/builders/impl/ListBuilderImpl;

    sget-object v1, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    new-instance v1, Landroidx/slice/SystemClock;

    invoke-direct {v1}, Landroidx/slice/SystemClock;-><init>()V

    invoke-direct {p0, v2, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-object p0

    :cond_0
    sget-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Landroidx/slice/builders/impl/ListBuilderImpl;

    sget-object v1, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    new-instance v1, Landroidx/slice/SystemClock;

    invoke-direct {v1}, Landroidx/slice/SystemClock;-><init>()V

    invoke-direct {p0, v2, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-object p0

    :cond_1
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;

    invoke-direct {p0, v2, v0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    check-cast p1, Landroidx/slice/builders/impl/ListBuilder;

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-void
.end method
