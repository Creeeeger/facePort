.class public Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.super Landroid/view/ViewGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBoundaryBox:Ljava/util/ArrayList;

.field public mCellHeight:I

.field public mCellWidth:I

.field public mCircle:Landroid/widget/FrameLayout;

.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mColumns:I

.field public final mContext:Landroid/content/Context;

.field public mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public final mCustomTilesInfo:Ljava/util/ArrayList;

.field public mIsScrollView:Z

.field public mIsTopEdit:Z

.field public mMaxRows:I

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mShowLabel:Z

.field public mSidePadding:I

.field public mTileHorizontalMargin:I

.field public mTileVerticalMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CustomizerTileLayout"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addBackgroundBox(IILandroid/view/View$OnDragListener;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addBackgroundBox listener = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "row = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "col = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/2addr p1, p2

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d02e4

    invoke-virtual {v1, v2, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f070d9e

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    move-result p1

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d02e5

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const p2, 0x7f0a096d

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tile = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tileInfo.isactive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    const-string v2, "CustomizerTileLayout"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/CustomTileInfo;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iget-object v1, p1, Lcom/android/systemui/qs/customize/CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v1, p1, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/CustomTileInfo;->isNewCustomTile:Z

    iput-boolean p1, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->isNewCustomTile:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;IZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v0, p3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v6, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v7, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v6, v7

    iget-object v7, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v7, p2

    if-le v7, v6, :cond_0

    move v7, v6

    :cond_0
    sget-boolean v8, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "addTile position = "

    const-string/jumbo v9, "total = "

    const-string v10, "idx = "

    invoke-static {v7, v6, v8, v9, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " spec = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "withAnimation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CustomizerTileLayout"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v8, Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-direct {v8}, Lcom/android/systemui/qs/customize/CustomTileInfo;-><init>()V

    iget-object v9, v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v9, v8, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v10, v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v10, v8, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v3, v9, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v9, v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/systemui/qs/customize/CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v9, v8, Lcom/android/systemui/qs/customize/CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v9, v5, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object v9

    iput-object v9, v8, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    move v0, v7

    :goto_0
    if-ge v0, v6, :cond_2

    iget-object v11, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v11, v11, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-array v12, v4, [Landroid/animation/Animator;

    iget-object v13, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v15, v0, 0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v14

    int-to-float v14, v14

    new-array v5, v2, [F

    aput v13, v5, v3

    aput v14, v5, v4

    const-string/jumbo v13, "x"

    invoke-static {v11, v13, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v12, v3

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v4, [Landroid/animation/Animator;

    iget-object v12, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v12, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTop()I

    move-result v12

    int-to-float v12, v12

    new-array v13, v2, [F

    aput v0, v13, v3

    aput v12, v13, v4

    const-string/jumbo v0, "y"

    invoke-static {v11, v0, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {v10, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v5, p1

    move v0, v15

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v7

    move-object v4, v8

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecCustomizeTileView;ILcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    invoke-virtual {v10, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public final createCustomizeTileView(Lcom/android/systemui/qs/customize/CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createCustomizeTileView"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    iget-boolean v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;-><init>(Landroid/content/Context;ZZ)V

    new-instance v1, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    iget-boolean v3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Z)V

    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v2, v1, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v2, v1, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v2, p1, Lcom/android/systemui/qs/customize/CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, p1, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setScreenReaderFocusable(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    iget-object v5, v1, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    if-eqz v2, :cond_1

    new-instance v4, Lcom/android/systemui/qs/customize/CustomActionDelegate;

    invoke-direct {v4, v1}, Lcom/android/systemui/qs/customize/CustomActionDelegate;-><init>(Lcom/android/systemui/qs/customize/CustomActionView;)V

    iput-object v2, v4, Lcom/android/systemui/qs/customize/CustomActionDelegate;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->addRemoveButton(Lcom/android/systemui/qs/customize/SecCustomizeTileView;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-object v1
.end method

.method public final dropTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Ljava/lang/Boolean;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dropTile tileInfo =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dropTile tileView =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->showRemoveIcon(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final getInfo(I)Lcom/android/systemui/qs/customize/CustomTileInfo;
    .locals 3

    sget-boolean v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    const-string v1, "CustomizerTileLayout"

    if-eqz v0, :cond_0

    const-string v2, "getInfo position = "

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "position is invalid position is  "

    invoke-static {v2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move p1, v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    return-object p0
.end method

.method public final indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "CustomizerTileLayout"

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "diffInfo.spec = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " i = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "diffInfo.spec is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const-string p0, "CustomizerTileLayout"

    const-string v0, "onAttachedToWindow()"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iget p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr p5, v0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    move v0, p3

    move v1, v0

    move v2, v1

    :goto_1
    if-ge v0, p5, :cond_4

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    if-ne v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v3, v3, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-eqz p2, :cond_2

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, p4

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    add-int/2addr v6, v5

    mul-int/2addr v6, v4

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    add-int/2addr v6, v4

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    add-int/2addr v4, v7

    mul-int/2addr v4, v2

    add-int/2addr v4, v7

    add-int/2addr v5, v6

    if-eqz v3, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    move p5, p3

    move v0, p5

    move v1, v0

    :goto_3
    if-ge p5, p4, :cond_7

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    if-ne v0, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v2

    :cond_5
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    add-int/2addr v3, v2

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v4, v5

    if-eqz p2, :cond_6

    sub-int v3, p1, v3

    sub-int v2, v3, v2

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_4

    :cond_6
    add-int/2addr v2, v3

    :goto_4
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v5, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v3, v4, v2, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const p2, 0x7f070d9d

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    move-result p2

    const p4, 0x7f070d9e

    invoke-virtual {p0, p4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    move-result p4

    sub-int/2addr p2, p4

    iget-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p3, p2, p4, p0}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c9d4952    # 0.0192f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    mul-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 v1, v2, 0x1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v1, v3

    sub-int/2addr p2, v1

    add-int/lit8 v1, v3, 0x1

    div-int/2addr p2, v1

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    const/4 v1, 0x0

    if-gez p2, :cond_0

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    :cond_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    mul-int/2addr v2, v3

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, v1

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v1, p1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/FrameLayout;->measure(II)V

    return-void
.end method

.method public final removeAllViews()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CustomizerTileLayout"

    const-string v1, "removeAllViews clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v3

    if-gez v3, :cond_0

    return-void

    :cond_0
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sget-boolean v5, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "removeTile index = "

    const-string/jumbo v6, "tile = "

    invoke-static {v3, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string v7, "CustomizerTileLayout"

    invoke-static {v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v5, v5, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-eqz p2, :cond_3

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    move v6, v3

    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v7, v7, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-array v9, v2, [Landroid/animation/Animator;

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    int-to-float v11, v11

    new-array v12, v0, [F

    aput v10, v12, v1

    aput v11, v12, v2

    const-string/jumbo v10, "x"

    invoke-static {v7, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {p2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v9, v2, [Landroid/animation/Animator;

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTop()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    new-array v11, v0, [F

    aput v10, v11, v1

    aput v6, v11, v2

    const-string/jumbo v6, "y"

    invoke-static {v7, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-virtual {p2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v6, v8

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;

    invoke-direct {v0, p0, v3, p1, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/SecCustomizeTileView;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x96

    invoke-virtual {p2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public final selectTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    sget-boolean p2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz p2, :cond_3

    const-string/jumbo p2, "selectTile position = "

    const-string v1, "CustomizerTileLayout"

    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCircleTranslation(IZ)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public final setCircleTranslation(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const v1, 0x7f0a096d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 v2, 0x20

    if-ne p2, v2, :cond_0

    const p2, 0x7f0605a7

    goto :goto_0

    :cond_0
    const p2, 0x7f06059e

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080df1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070d87

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070d88

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public final showRemoveIcon(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconRemove:Landroid/view/View;

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final withDefaultDensity(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
