.class public final Landroidx/slice/Slice$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mChildId:I

.field public final mHints:Ljava/util/ArrayList;

.field public final mItems:Ljava/util/ArrayList;

.field public mSpec:Landroidx/slice/SliceSpec;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_gen"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/slice/Slice$Builder;->mChildId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Landroidx/slice/Slice$Builder;->mChildId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/SliceItem;

    invoke-direct {v1, p1, p2, p3, v0}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs addHints([Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/slice/Slice;->isValidIcon(Landroidx/core/graphics/drawable/IconCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/slice/Slice;->isValidIcon(Landroidx/core/graphics/drawable/IconCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroidx/slice/SliceItem;

    const-string v1, "image"

    invoke-direct {v0, p1, v1, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final varargs addInt(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroidx/slice/SliceItem;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "int"

    invoke-direct {v0, p1, v1, p3, p2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addItem(Landroidx/slice/SliceItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addSubSlice(Landroidx/slice/Slice;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    return-void
.end method

.method public final addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroidx/slice/SliceItem;

    iget-object v1, p1, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string/jumbo v2, "slice"

    invoke-direct {v0, p1, v2, p2, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Landroidx/slice/SliceItem;

    const-string/jumbo v1, "text"

    invoke-direct {v0, p1, v1, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final build()Landroidx/slice/Slice;
    .locals 6

    new-instance v0, Landroidx/slice/Slice;

    iget-object v1, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    invoke-direct {v0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    sget-object v5, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iput-object v5, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    iput-object v4, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v2, v0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/slice/SliceItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/slice/SliceItem;

    iput-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object p0, v0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    return-object v0
.end method
