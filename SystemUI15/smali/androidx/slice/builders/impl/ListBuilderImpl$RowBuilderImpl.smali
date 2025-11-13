.class public final Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContentDescr:Ljava/lang/CharSequence;

.field public final mEndItems:Ljava/util/ArrayList;

.field public mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field public mStartItem:Landroidx/slice/Slice;

.field public mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroidx/slice/builders/impl/ListBuilderImpl;)V
    .locals 1

    new-instance v0, Landroidx/slice/Slice$Builder;

    iget-object p1, p1, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 4

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/Slice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v3, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const-string v2, "content_description"

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_4
    return-void
.end method
