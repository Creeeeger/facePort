.class public abstract Landroidx/slice/builders/TemplateSliceBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBuilder:Landroidx/slice/Slice$Builder;

.field public final mSpecs:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p2}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    sget-object v0, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_0
    new-instance v0, Landroidx/slice/SliceManagerWrapper;

    invoke-direct {v0, p1}, Landroidx/slice/SliceManagerWrapper;-><init>(Landroid/content/Context;)V

    iget-object p1, v0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {p1, p2}, Landroid/app/slice/SliceManager;->getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Landroidx/collection/ArraySet;

    invoke-direct {p2}, Landroidx/collection/ArraySet;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceSpec;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/slice/SliceSpec;

    invoke-virtual {v0}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/slice/builders/TemplateSliceBuilder;->selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No valid specs found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method


# virtual methods
.method public final checkCompatible(Landroidx/slice/SliceSpec;)Z
    .locals 6

    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    iget-object v4, v3, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v5, p1, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v3, Landroidx/slice/SliceSpec;->mRevision:I

    iget v4, p1, Landroidx/slice/SliceSpec;->mRevision:I

    if-lt v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method
