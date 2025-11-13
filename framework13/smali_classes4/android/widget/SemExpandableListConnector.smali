.class Landroid/widget/SemExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "SemExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemExpandableListConnector$ItemDecorator;,
        Landroid/widget/SemExpandableListConnector$PositionMetadata;,
        Landroid/widget/SemExpandableListConnector$GroupMetadata;,
        Landroid/widget/SemExpandableListConnector$MyDataSetObserver;
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
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .line 88
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    .line 79
    new-instance v0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/SemExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 92
    return-void
.end method

.method private blacklist refreshExpGroupMetadataList(ZZ)V
    .locals 10
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .line 566
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 567
    .local v0, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 568
    .local v1, "egmlSize":I
    const/4 v2, 0x0

    .line 571
    .local v2, "curFlPos":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    .line 573
    const/4 v3, -0x1

    if-eqz p2, :cond_3

    .line 575
    const/4 v4, 0x0

    .line 577
    .local v4, "positionsChanged":Z
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 578
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 579
    .local v6, "curGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget-wide v7, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gId:J

    iget v9, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v7, v8, v9}, Landroid/widget/SemExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 580
    .local v7, "newGPos":I
    iget v8, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v8, :cond_1

    .line 581
    if-ne v7, v3, :cond_0

    .line 583
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 584
    add-int/lit8 v1, v1, -0x1

    .line 587
    :cond_0
    iput v7, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    .line 588
    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 577
    .end local v6    # "curGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .end local v7    # "newGPos":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 592
    .end local v5    # "i":I
    :cond_2
    if-eqz v4, :cond_3

    .line 594
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 599
    .end local v4    # "positionsChanged":Z
    :cond_3
    const/4 v4, 0x0

    .line 600
    .local v4, "lastGPos":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v1, :cond_6

    .line 602
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 608
    .restart local v6    # "curGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v7, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v7, v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    .line 614
    :cond_4
    iget v7, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v7, v8

    .local v7, "gChildrenCount":I
    goto :goto_3

    .line 609
    .end local v7    # "gChildrenCount":I
    :cond_5
    :goto_2
    iget-object v7, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v7

    .line 618
    .restart local v7    # "gChildrenCount":I
    :goto_3
    iget v8, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/SemExpandableListConnector;->mTotalExpChildrenCount:I

    .line 625
    iget v8, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v8, v4

    add-int/2addr v2, v8

    .line 626
    iget v4, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    .line 629
    iput v2, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    .line 630
    add-int/2addr v2, v7

    .line 631
    iput v2, v6, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 600
    .end local v6    # "curGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 633
    .end local v5    # "i":I
    .end local v7    # "gChildrenCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 1

    .line 404
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method blacklist collapseGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 641
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 643
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 644
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 645
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 647
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListConnector;->collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 648
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 649
    return v2
.end method

.method blacklist collapseGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .line 662
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 663
    return v1

    .line 667
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 670
    invoke-direct {p0, v1, v1}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 673
    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetChanged()V

    .line 676
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method blacklist expandGroup(I)Z
    .locals 3
    .param p1, "groupPos"    # I

    .line 686
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 688
    .local v0, "elGroupPos":Landroid/widget/SemExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/SemExpandableListConnector;->getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 689
    .local v1, "pm":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_0

    .line 690
    const/4 v2, 0x0

    return v2

    .line 692
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    .line 693
    invoke-virtual {p0, v1}, Landroid/widget/SemExpandableListConnector;->expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 694
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 695
    return v2
.end method

.method blacklist expandGroup(Landroid/widget/SemExpandableListConnector$PositionMetadata;)Z
    .locals 6
    .param p1, "posMetadata"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .line 703
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    if-ltz v0, :cond_4

    .line 708
    iget v0, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 711
    :cond_0
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_1

    return v1

    .line 714
    :cond_1
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 718
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 720
    .local v0, "collapsedGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 722
    .local v2, "collapsedIndex":I
    iget v4, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Landroid/widget/SemExpandableListConnector;->collapseGroup(I)Z

    .line 725
    iget v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v2, :cond_2

    .line 726
    iget v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 732
    .end local v0    # "collapsedGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .end local v2    # "collapsedIndex":I
    :cond_2
    iget v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 733
    return v1

    .line 736
    :cond_3
    iget-object v0, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 740
    invoke-interface {v2, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    .line 736
    const/4 v2, -0x1

    invoke-static {v2, v2, v0, v4, v5}, Landroid/widget/SemExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 742
    .local v0, "expandedGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 745
    invoke-direct {p0, v1, v1}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 748
    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetChanged()V

    .line 751
    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 753
    return v3

    .line 705
    .end local v0    # "expandedGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Need group"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist findGroupPosition(JI)I
    .locals 15
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .line 836
    move-object v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 838
    .local v1, "count":I
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 839
    return v2

    .line 843
    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 844
    return v2

    .line 848
    :cond_1
    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 849
    .end local p3    # "seedGroupPosition":I
    .local v4, "seedGroupPosition":I
    add-int/lit8 v5, v1, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 851
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    add-long/2addr v5, v7

    .line 856
    .local v5, "endTime":J
    move v7, v4

    .line 859
    .local v7, "first":I
    move v8, v4

    .line 862
    .local v8, "last":I
    const/4 v9, 0x0

    .line 872
    .local v9, "next":Z
    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v10

    .line 873
    .local v10, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v10, :cond_2

    .line 874
    return v2

    .line 877
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-gtz v11, :cond_a

    .line 878
    invoke-interface {v10, v4}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v11

    .line 879
    .local v11, "rowId":J
    cmp-long v13, v11, p1

    if-nez v13, :cond_3

    .line 881
    return v4

    .line 884
    :cond_3
    add-int/lit8 v13, v1, -0x1

    const/4 v14, 0x1

    if-ne v8, v13, :cond_4

    move v13, v14

    goto :goto_1

    :cond_4
    move v13, v3

    .line 885
    .local v13, "hitLast":Z
    :goto_1
    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v14, v3

    .line 887
    .local v14, "hitFirst":Z
    :goto_2
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    .line 889
    goto :goto_4

    .line 892
    :cond_6
    if-nez v14, :cond_9

    if-eqz v9, :cond_7

    if-nez v13, :cond_7

    goto :goto_3

    .line 898
    :cond_7
    if-nez v13, :cond_8

    if-nez v9, :cond_2

    if-nez v14, :cond_2

    .line 900
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 901
    move v4, v7

    .line 903
    const/4 v9, 0x1

    goto :goto_0

    .line 894
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 895
    move v4, v8

    .line 897
    const/4 v9, 0x0

    goto :goto_0

    .line 908
    .end local v11    # "rowId":J
    .end local v13    # "hitLast":Z
    .end local v14    # "hitFirst":Z
    :cond_a
    :goto_4
    return v2
.end method

.method blacklist getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 782
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 2

    .line 433
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 434
    .local v0, "groupCount":I
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

    .line 795
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .locals 2

    .line 786
    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 787
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 788
    move-object v1, v0

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    return-object v1

    .line 790
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getFlattenedPos(Landroid/widget/SemExpandableListPosition;)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 21
    .param p1, "pos"    # Landroid/widget/SemExpandableListPosition;

    .line 293
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 294
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 297
    .local v3, "numExpGroups":I
    const/4 v4, 0x0

    .line 298
    .local v4, "leftExpGroupIndex":I
    add-int/lit8 v5, v3, -0x1

    .line 299
    .local v5, "rightExpGroupIndex":I
    const/4 v6, 0x0

    .line 302
    .local v6, "midExpGroupIndex":I
    if-nez v3, :cond_0

    .line 308
    iget v7, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v8, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 317
    :cond_0
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v4, v5, :cond_5

    .line 318
    sub-int v10, v5, v4

    div-int/2addr v10, v8

    add-int v6, v10, v4

    .line 319
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 321
    .local v10, "midExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v11, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-le v11, v12, :cond_1

    .line 325
    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 326
    :cond_1
    iget v11, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v11, v12, :cond_2

    .line 330
    add-int/lit8 v5, v6, -0x1

    goto :goto_0

    .line 331
    :cond_2
    iget v11, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v12, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v11, v12, :cond_0

    .line 336
    iget v11, v0, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v11, v8, :cond_3

    .line 338
    iget v11, v10, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    iget v12, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iget v13, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v14, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move-object v15, v10

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v7

    return-object v7

    .line 340
    :cond_3
    iget v8, v0, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v8, v9, :cond_4

    .line 342
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

    .line 346
    :cond_4
    return-object v7

    .line 355
    .end local v10    # "midExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_5
    iget v10, v0, Landroid/widget/SemExpandableListPosition;->type:I

    if-eq v10, v8, :cond_6

    .line 357
    return-object v7

    .line 365
    :cond_6
    if-le v4, v6, :cond_7

    .line 376
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 377
    .local v7, "leftExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v8, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v9, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v10, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v10

    add-int v14, v8, v9

    .line 381
    .local v14, "flPos":I
    iget v9, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v11, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    move v8, v14

    move v13, v4

    invoke-static/range {v8 .. v13}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v8

    return-object v8

    .line 383
    .end local v7    # "leftExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .end local v14    # "flPos":I
    :cond_7
    if-ge v5, v6, :cond_8

    .line 391
    add-int/2addr v5, v9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 392
    .local v7, "rightExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v8, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    iget v9, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    iget v10, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 395
    .local v8, "flPos":I
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

    .line 398
    .end local v7    # "rightExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .end local v8    # "flPos":I
    :cond_8
    return-object v7
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "flatListPos"    # I

    .line 439
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 442
    .local v0, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 443
    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 444
    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "retValue":Ljava/lang/Object;
    goto :goto_0

    .line 445
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 446
    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .line 453
    .restart local v1    # "retValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 455
    return-object v1

    .line 450
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Flat list position is of unknown type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getItemId(I)J
    .locals 6
    .param p1, "flatListPos"    # I

    .line 459
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 460
    .local v0, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 463
    .local v1, "groupId":J
    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 464
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v1, v2}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v3

    .local v3, "retValue":J
    goto :goto_0

    .line 465
    .end local v3    # "retValue":J
    :cond_0
    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 466
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v4, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v4, v4, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget-object v5, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v5, v5, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    .line 468
    .local v3, "childId":J
    iget-object v5, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v1, v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v3

    .line 469
    .local v3, "retValue":J
    nop

    .line 474
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 476
    return-wide v3

    .line 471
    .end local v3    # "retValue":J
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Flat list position is of unknown type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist getItemViewType(I)I
    .locals 5
    .param p1, "flatListPos"    # I

    .line 511
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 512
    .local v0, "metadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    .line 515
    .local v1, "pos":Landroid/widget/SemExpandableListPosition;
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v3, v2, Landroid/widget/HeterogeneousExpandableList;

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 516
    check-cast v2, Landroid/widget/HeterogeneousExpandableList;

    .line 518
    .local v2, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v3, v1, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v3, v4, :cond_0

    .line 519
    iget v3, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v3

    .local v3, "retValue":I
    goto :goto_0

    .line 521
    .end local v3    # "retValue":I
    :cond_0
    iget v3, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v4, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v3

    .line 522
    .local v3, "childType":I
    invoke-interface {v2}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    .line 524
    .end local v2    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v3, "retValue":I
    :goto_0
    goto :goto_1

    .line 525
    .end local v3    # "retValue":I
    :cond_1
    iget v2, v1, Landroid/widget/SemExpandableListPosition;->type:I

    if-ne v2, v4, :cond_2

    .line 526
    const/4 v3, 0x0

    .restart local v3    # "retValue":I
    goto :goto_1

    .line 528
    .end local v3    # "retValue":I
    :cond_2
    const/4 v3, 0x1

    .line 532
    .restart local v3    # "retValue":I
    :goto_1
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 534
    return v3
.end method

.method blacklist getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 13
    .param p1, "flPos"    # I

    .line 143
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 144
    .local v0, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 147
    .local v1, "numExpGroups":I
    const/4 v2, 0x0

    .line 148
    .local v2, "leftExpGroupIndex":I
    add-int/lit8 v3, v1, -0x1

    .line 149
    .local v3, "rightExpGroupIndex":I
    const/4 v4, 0x0

    .line 152
    .local v4, "midExpGroupIndex":I
    if-nez v1, :cond_0

    .line 158
    const/4 v6, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, p1

    move v7, p1

    invoke-static/range {v5 .. v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v5

    return-object v5

    .line 174
    :cond_0
    :goto_0
    if-gt v2, v3, :cond_4

    .line 175
    sub-int v5, v3, v2

    div-int/lit8 v5, v5, 0x2

    add-int v4, v5, v2

    .line 178
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 180
    .local v5, "midExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-le p1, v6, :cond_1

    .line 185
    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-ge p1, v6, :cond_2

    .line 191
    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    .line 192
    :cond_2
    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    if-ne p1, v6, :cond_3

    .line 197
    const/4 v7, 0x2

    iget v8, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v9, -0x1

    move v6, p1

    move-object v10, v5

    move v11, v4

    invoke-static/range {v6 .. v11}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v6

    return-object v6

    .line 199
    :cond_3
    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-gt p1, v6, :cond_0

    .line 209
    iget v6, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v6, v6, 0x1

    sub-int v12, p1, v6

    .line 210
    .local v12, "childPos":I
    const/4 v7, 0x1

    iget v8, v5, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    move v6, p1

    move v9, v12

    move-object v10, v5

    move v11, v4

    invoke-static/range {v6 .. v11}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v6

    return-object v6

    .line 226
    .end local v5    # "midExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .end local v12    # "childPos":I
    :cond_4
    const/4 v5, 0x0

    .line 229
    .local v5, "insertPosition":I
    const/4 v6, 0x0

    .line 236
    .local v6, "groupPos":I
    if-le v2, v4, :cond_5

    .line 244
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 246
    .local v7, "leftExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    move v5, v2

    .line 252
    iget v8, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v8, p1, v8

    iget v9, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    add-int/2addr v8, v9

    .line 254
    .end local v6    # "groupPos":I
    .end local v7    # "leftExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .local v8, "groupPos":I
    move v11, v5

    move v12, v8

    goto :goto_1

    .end local v8    # "groupPos":I
    .restart local v6    # "groupPos":I
    :cond_5
    if-ge v3, v4, :cond_6

    .line 261
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 263
    .local v7, "rightExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    move v5, v3

    .line 271
    iget v8, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    iget v9, v7, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v9, p1

    sub-int/2addr v8, v9

    .line 272
    .end local v6    # "groupPos":I
    .end local v7    # "rightExpGm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .restart local v8    # "groupPos":I
    move v11, v5

    move v12, v8

    .line 277
    .end local v5    # "insertPosition":I
    .end local v8    # "groupPos":I
    .local v11, "insertPosition":I
    .local v12, "groupPos":I
    :goto_1
    const/4 v6, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    move v5, p1

    move v7, v12

    move v10, v11

    invoke-static/range {v5 .. v10}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v5

    return-object v5

    .line 274
    .end local v11    # "insertPosition":I
    .end local v12    # "groupPos":I
    .restart local v5    # "insertPosition":I
    .restart local v6    # "groupPos":I
    :cond_6
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unknown state"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 480
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 482
    .local v0, "posMetadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    move-object v1, p2

    .line 483
    .local v1, "originalConvertView":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    if-eqz v2, :cond_0

    .line 484
    invoke-interface {v2, p2}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 488
    :cond_0
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 489
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v3, v3, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 490
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    .line 489
    invoke-interface {v2, v3, v4, v1, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "retValue":Landroid/view/View;
    goto :goto_1

    .line 491
    .end local v2    # "retValue":Landroid/view/View;
    :cond_1
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v2, v2, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 492
    iget-object v2, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v2, p1, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v5, v2

    .line 494
    .local v5, "isLastChild":Z
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

    .line 496
    .end local v5    # "isLastChild":Z
    .restart local v2    # "retValue":Landroid/view/View;
    nop

    .line 501
    :goto_1
    iget-object v3, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    if-eqz v3, :cond_3

    .line 502
    invoke-interface {v3, p2, v2, v0}, Landroid/widget/SemExpandableListConnector$ItemDecorator;->onItemDecorate(Landroid/view/View;Landroid/view/View;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/view/View;

    move-result-object v2

    .line 505
    :cond_3
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 506
    return-object v2

    .line 498
    .end local v2    # "retValue":Landroid/view/View;
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getViewTypeCount()I
    .locals 3

    .line 539
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 542
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 544
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    .line 550
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 2

    .line 820
    invoke-virtual {p0}, Landroid/widget/SemExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 821
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
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
    .param p1, "flatListPos"    # I

    .line 409
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 410
    .local v0, "metadata":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    .line 413
    .local v1, "pos":Landroid/widget/SemExpandableListPosition;
    iget v2, v1, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 414
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v4, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    .local v2, "retValue":Z
    goto :goto_0

    .line 417
    .end local v2    # "retValue":Z
    :cond_0
    const/4 v2, 0x1

    .line 420
    .restart local v2    # "retValue":Z
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    .line 422
    return v2
.end method

.method public blacklist isGroupExpanded(I)Z
    .locals 4
    .param p1, "groupPosition"    # I

    .line 763
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 764
    iget-object v2, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    .line 766
    .local v2, "groupMetadata":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    iget v3, v2, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v3, p1, :cond_0

    .line 767
    return v1

    .line 763
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 771
    .end local v0    # "i":I
    .end local v2    # "groupMetadata":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semRegisterDataSetObserver()V
    .locals 3

    .line 115
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    if-nez v2, :cond_0

    .line 116
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    .line 119
    :cond_0
    return-void
.end method

.method blacklist semUnregisterDataSetObserver()V
    .locals 3

    .line 123
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    .line 127
    :cond_0
    return-void
.end method

.method public blacklist setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .line 100
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 104
    :cond_0
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 105
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemExpandableListConnector;->mIsRegisteredObserver:Z

    .line 107
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

    .line 800
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 806
    :cond_0
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 807
    .local v0, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 808
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v3, v0, :cond_1

    .line 810
    return-void

    .line 807
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 814
    .end local v1    # "i":I
    :cond_2
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 815
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Landroid/widget/SemExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 816
    return-void

    .line 801
    .end local v0    # "numGroups":I
    :cond_3
    :goto_1
    return-void
.end method

.method blacklist setItemDecorator(Landroid/widget/SemExpandableListConnector$ItemDecorator;)V
    .locals 0
    .param p1, "itemDecorator"    # Landroid/widget/SemExpandableListConnector$ItemDecorator;

    .line 110
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector;->mItemDecorator:Landroid/widget/SemExpandableListConnector$ItemDecorator;

    .line 111
    return-void
.end method

.method public blacklist setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .line 778
    iput p1, p0, Landroid/widget/SemExpandableListConnector;->mMaxExpGroupCount:I

    .line 779
    return-void
.end method
