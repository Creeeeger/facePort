.class Landroid/widget/SemExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "SemExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListConnector$MyDataSetObserver;,
        Landroid/widget/SemExpandableListConnector$ItemDecorator;,
        Landroid/widget/SemExpandableListConnector$PositionMetadata;,
        Landroid/widget/SemExpandableListConnector$GroupMetadata;
    }
.end annotation


# instance fields
.field private final blacklist mDataSetObserver:Landroid/database/DataSetObserver;

.field private blacklist mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private blacklist mIsRegisteredObserver:Z

.field private blacklist mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

.field private blacklist mMaxExpGroupCount:I

.field private blacklist mTotalExpChildrenCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrefreshExpGroupMetadataList(Landroid/widget/SemExpandableListConnector;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    new-instance v0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/SemExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method private blacklist refreshExpGroupMetadataList(ZZ)V
    .locals 10

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    const/4 v3, -0x1

    if-eqz p2, :cond_3

    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    :goto_0
    if-ltz v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget-wide v7, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gId:J

    iget v9, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v7, v8, v9}, Landroid/widget/SemExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    iget v8, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v8, :cond_1

    if-ne v7, v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iput v7, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v7, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v7, v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget v7, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v7, v8

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v7, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v7

    :goto_3
    iget v8, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    iget v8, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v8, v4

    add-int/2addr v2, v8

    iget v4, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    iput v2, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    add-int/2addr v2, v7

    iput v2, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method blacklist collapseGroup(I)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v2
.end method

.method blacklist collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 3

    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v1}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetChanged()V

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    const/4 v0, 0x1

    return v0
.end method

.method blacklist expandGroup(I)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v2
.end method

.method blacklist expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 6

    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget v4, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    iget v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v2, :cond_2

    iget v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    :cond_2
    iget v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v2, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    const/4 v2, -0x1

    invoke-static {v2, v2, v0, v4, v5}, Landroid/widget/SemExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, v1, v1}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetChanged()V

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    return v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Need group"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist findGroupPosition(JI)I
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    add-long/2addr v5, v7

    move v7, v4

    move v8, v4

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v10

    if-nez v10, :cond_2

    return v2

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-gtz v11, :cond_a

    invoke-interface {v10, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v11

    cmp-long v13, v11, p1

    if-nez v13, :cond_3

    return v4

    :cond_3
    add-int/lit8 v13, v1, -0x1

    const/4 v14, 0x1

    if-ne v8, v13, :cond_4

    move v13, v14

    goto :goto_1

    :cond_4
    move v13, v3

    :goto_1
    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v14, v3

    :goto_2
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    goto :goto_4

    :cond_6
    if-nez v14, :cond_9

    if-eqz v9, :cond_7

    if-nez v13, :cond_7

    goto :goto_3

    :cond_7
    if-nez v13, :cond_8

    if-nez v9, :cond_2

    if-nez v14, :cond_2

    :cond_8
    add-int/lit8 v7, v7, -0x1

    move v4, v7

    const/4 v9, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v4, v8

    const/4 v9, 0x0

    goto :goto_0

    :cond_a
    :goto_4
    return v2
.end method

.method blacklist getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method blacklist getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    add-int/lit8 v5, v3, -0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    iget v7, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v8, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    :cond_0
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v4, v5, :cond_5

    sub-int v10, v5, v4

    div-int/2addr v10, v8

    add-int v6, v10, v4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v11, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-le v11, v12, :cond_1

    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    :cond_1
    iget v11, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v11, v12, :cond_2

    add-int/lit8 v5, v6, -0x1

    goto :goto_0

    :cond_2
    iget v11, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v11, v12, :cond_0

    iget v11, v0, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v11, v8, :cond_3

    iget v11, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    iget v12, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iget v13, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v14, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    :cond_3
    iget v8, v0, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v8, v9, :cond_4

    iget v7, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    iget v8, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    add-int/2addr v7, v8

    add-int/lit8 v11, v7, 0x1

    iget v12, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iget v13, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v14, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    :cond_4
    return-object v7

    :cond_5
    iget v10, v0, Landroid/widget/SemExpandableListPosition;->type:I

    if-eq v10, v8, :cond_6

    return-object v7

    :cond_6
    if-le v4, v6, :cond_7

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v8, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v10, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v10

    add-int v14, v8, v9

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v11, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    move v8, v14

    move v13, v4

    invoke-static/range {v8 .. v13}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v8

    return-object v8

    :cond_7
    if-ge v5, v6, :cond_8

    add-int/2addr v5, v9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v8, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    iget v9, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v11, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/16 v19, 0x0

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v20, v5

    invoke-static/range {v15 .. v20}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v9

    return-object v9

    :cond_8
    return-object v7
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Flat list position is of unknown type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getItemId(I)J
    .locals 6

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v1

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v1, v2}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v5, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v5, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v1, v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v3

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-wide v3

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Flat list position is of unknown type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist getItemViewType(I)I
    .locals 5

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v2, v2, Landroid/widget/HeterogeneousExpandableList;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v2, Landroid/widget/HeterogeneousExpandableList;

    iget v4, v1, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v4, v3, :cond_0

    iget v3, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v4, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v3

    invoke-interface {v2}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    :goto_0
    goto :goto_1

    :cond_1
    iget v2, v1, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v2, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v3
.end method

.method blacklist getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 13

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x2

    const/4 v8, -0x1

    move v5, p1

    move v7, p1

    invoke-static/range {v5 .. v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v5

    return-object v5

    :cond_0
    :goto_0
    if-gt v2, v3, :cond_4

    sub-int v5, v3, v2

    div-int/lit8 v5, v5, 0x2

    add-int v4, v5, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-le p1, v6, :cond_1

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_1
    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-ge p1, v6, :cond_2

    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    :cond_2
    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-ne p1, v6, :cond_3

    iget v8, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v9, -0x1

    const/4 v7, 0x2

    move v6, p1

    move-object v10, v5

    move v11, v4

    invoke-static/range {v6 .. v11}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v6

    return-object v6

    :cond_3
    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-gt p1, v6, :cond_0

    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v6, v6, 0x1

    sub-int v12, p1, v6

    const/4 v7, 0x1

    iget v8, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    move v6, p1

    move v9, v12

    move-object v10, v5

    move v11, v4

    invoke-static/range {v6 .. v11}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v6

    return-object v6

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-le v2, v4, :cond_5

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move v5, v2

    iget v8, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v8, p1, v8

    iget v9, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    add-int/2addr v8, v9

    move v11, v5

    move v12, v8

    goto :goto_1

    :cond_5
    if-ge v3, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move v5, v3

    iget v8, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    iget v9, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v9, p1

    sub-int/2addr v8, v9

    move v11, v5

    move v12, v8

    :goto_1
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v6, 0x2

    move v5, p1

    move v7, v12

    move v10, v11

    invoke-static/range {v5 .. v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v5

    return-object v5

    :cond_6
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unknown state"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    move-object v1, p2

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v2, p2}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    :cond_0
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    invoke-interface {v2, v3, v4, v1, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v2, p1, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v5, v2

    :goto_0
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v4, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v6, v1

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    nop

    :goto_1
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    invoke-interface {v3, p2, v2, v0}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->onItemDecorate(Landroid/view/View;Landroid/view/View;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/view/View;

    move-result-object v2

    :cond_3
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return-object v2

    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getViewTypeCount()I
    .locals 3

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v0, v0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public whitelist isEnabled(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v4, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    return v2
.end method

.method public blacklist isGroupExpanded(I)Z
    .locals 4

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v3, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semRegisterDataSetObserver()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    :cond_0
    return-void
.end method

.method blacklist semUnregisterDataSetObserver()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    :cond_0
    return-void
.end method

.method public blacklist setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    return-void
.end method

.method blacklist setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v3, v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method blacklist setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    return-void
.end method

.method public blacklist setMaxExpGroupCount(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    return-void
.end method
