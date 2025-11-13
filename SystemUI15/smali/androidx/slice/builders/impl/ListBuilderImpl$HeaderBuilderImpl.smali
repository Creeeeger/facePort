.class public final Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field public mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/ListBuilderImpl;)V
    .locals 1

    new-instance v0, Landroidx/slice/Slice$Builder;

    iget-object p1, p1, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_1
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Header requires a title or subtitle to be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
