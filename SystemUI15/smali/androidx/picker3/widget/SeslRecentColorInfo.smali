.class public final Landroidx/picker3/widget/SeslRecentColorInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentColor:Ljava/lang/Integer;

.field public mNewColor:Ljava/lang/Integer;

.field public final mRecentColorInfo:Ljava/util/ArrayList;

.field public mSelectedColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/picker3/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/picker3/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/picker3/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker3/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final initRecentColorInfo([I)V
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    sget v1, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v1, p1, v2

    iget-object v3, p0, Landroidx/picker3/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget v0, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Landroidx/picker3/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
