.class public final Landroidx/slice/builders/ListBuilder$RowBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContentDescription:Ljava/lang/CharSequence;

.field public final mEndItems:Ljava/util/List;

.field public final mEndLoads:Ljava/util/List;

.field public final mEndTypes:Ljava/util/List;

.field public mHasDefaultToggle:Z

.field public mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field public mSubtitle:Ljava/lang/CharSequence;

.field public mSubtitleLoading:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleAction:Landroidx/slice/builders/SliceAction;

.field public mTitleActionLoading:Z

.field public mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public mTitleImageMode:I

.field public mTitleItemLoading:Z

.field public mTitleLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addEndItem(Landroidx/slice/builders/SliceAction;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasDefaultToggle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasDefaultToggle:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only one non-custom toggle can be added in a single row. If you would like to include multiple toggles in a row, set a custom icon for each toggle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    return-void
.end method

.method public final setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleAction:Landroidx/slice/builders/SliceAction;

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleImageMode:I

    iput-boolean p1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleItemLoading:Z

    return-void
.end method
