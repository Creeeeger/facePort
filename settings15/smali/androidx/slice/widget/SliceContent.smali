.class public abstract Landroidx/slice/widget/SliceContent;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mColorItem:Landroidx/slice/SliceItem;

.field public mContentDescr:Landroidx/slice/SliceItem;

.field public mLayoutDirItem:Landroidx/slice/SliceItem;

.field public mRowIndex:I

.field public mSliceItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceContent;->init(Landroidx/slice/SliceItem;)V

    iput p2, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    return-void
.end method


# virtual methods
.method public abstract getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
.end method

.method public final getLayoutDir()I
    .locals 2

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, p0

    :cond_1
    return v0
.end method

.method public final init(Landroidx/slice/SliceItem;)V
    .locals 4

    iput-object p1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    iget-object v0, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string/jumbo v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "int"

    const-string v2, "color"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceContent;->mColorItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v2, "layout_direction"

    invoke-static {v0, v1, v2, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    :cond_1
    const-string/jumbo v0, "text"

    const-string v1, "content_description"

    invoke-static {p1, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    return-void
.end method
