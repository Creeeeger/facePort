.class public final Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final displayX:I

.field public final displayY:I

.field public final mActionViewIdMapFlip:Landroid/util/SparseArray;

.field public final mActionViewIdMapFold:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mFloatingPanelView:Landroid/widget/LinearLayout;

.field public final mMediaArtistText:Landroid/widget/TextView;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaImageView:Landroid/widget/ImageView;

.field public final mMediaNextButton:Landroid/widget/LinearLayout;

.field public final mMediaPauseButton:Landroid/widget/LinearLayout;

.field public final mMediaPreviousButton:Landroid/widget/LinearLayout;

.field public final mMediaResumeButton:Landroid/widget/LinearLayout;

.field public final mMediaTitleText:Landroid/widget/TextView;

.field public mPlaybackState:Landroid/media/session/PlaybackState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mActionViewIdMapFold:Landroid/util/SparseArray;

    const-wide/16 v4, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v5, 0x7f0a0098

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 v6, 0x20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v6, 0x7f0a0097

    invoke-virtual {v3, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v7, 0x7f0a0093

    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const v9, 0x7f0a008e

    invoke-virtual {v3, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mActionViewIdMapFlip:Landroid/util/SparseArray;

    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    const v3, 0x7f0a0d3e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    const v4, 0x7f0a0115

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaArtistText:Landroid/widget/TextView;

    const v8, 0x7f0a06d5

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    :cond_0
    const-string/jumbo v5, "window"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v5, v6, Landroid/graphics/Point;->x:I

    iput v5, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->displayX:I

    iget v5, v6, Landroid/graphics/Point;->y:I

    iput v5, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->displayY:I

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v5

    const v6, 0x7f0a09cb

    const v7, 0x7f0a08d3

    const v9, 0x7f0a06f1

    const v10, 0x7f0a06ee

    const-wide/16 v11, 0x0

    if-eqz v5, :cond_1

    iget v3, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->displayY:I

    int-to-double v3, v3

    const-wide v13, 0x403fe66666666666L    # 31.9

    mul-double/2addr v3, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v13

    double-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0700b4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setY(F)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v3, 0x3ffe666666666666L    # 1.9

    invoke-virtual {p0, v3, v4, v11, v12}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a06f0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v11, v12}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v9, 0x4007333333333333L    # 2.9

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a06c6

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v11, v12}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a06c7

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v11, v12}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    const-wide v3, 0x4046e66666666666L    # 45.8

    invoke-virtual {p0, v3, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParamsWidth(D)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaArtistText:Landroid/widget/TextView;

    const-wide v3, 0x4021666666666666L    # 8.7

    invoke-virtual {p0, v3, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParamsWidth(D)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v3, 0x40115c28f5c28f5cL    # 4.34

    const-wide v8, 0x4014d70a3d70a3d7L    # 5.21

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    const-wide v3, 0x400ee147ae147ae1L    # 3.86

    const-wide v8, 0x4012851eb851eb85L    # 4.63

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    const-wide v10, 0x40071eb851eb851fL    # 2.89

    const-wide v12, 0x400bc28f5c28f5c3L    # 3.47

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a0b73

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a090e

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v13, 0x400199999999999aL    # 2.2

    invoke-virtual {p0, v13, v14, v11, v12}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v13, v14, v11, v12}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a0d74

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-virtual {p0, v11, v12, v9, v10}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    invoke-virtual {p0, v9, v10}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParamsWidth(D)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v9, v10}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParamsWidth(D)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide v8, 0x40105c28f5c28f5cL    # 4.09

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    const-wide v3, 0x4021c28f5c28f5c3L    # 8.88

    const-wide v8, 0x400d1eb851eb851fL    # 3.64

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const-string v1, "TouchPadMediaPanel"

    const-string v2, "MediaPanel setupButtons"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->displayX:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    div-double/2addr v1, p1

    double-to-int v1, v1

    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->displayY:I

    int-to-double v2, p0

    mul-double/2addr v2, p3

    div-double/2addr v2, p1

    double-to-int p0, v2

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final getRatioLayoutParamsWidth(D)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->displayX:I

    int-to-double v1, p0

    mul-double/2addr v1, p1

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double/2addr v1, p0

    double-to-int p0, v1

    const/4 p1, -0x2

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final onClickButton(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    const-string v1, "TouchPadMediaPanel"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MediaPanel onClick mMediaPauseButton mMediaController : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logging : , mPlaybackState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0098

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0097

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0093

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_0

    :cond_3
    const v0, 0x7f0a008e

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    :cond_4
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_MODE_SA_LOGGING:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "F003"

    invoke-static {p1, p0, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string p0, "MediaPanel onClickButton mMediaController or getPlaybackState == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateTouchPadMediaPanel()V
    .locals 15

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    const-string v1, "TouchPadMediaPanel"

    if-nez v0, :cond_0

    const-string p0, "TouchPadMediaPanel updateTouchPadMediaPanel mMediaController == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_1

    const-string p0, "TouchPadMediaPanel updateTouchPadMediaPanel getPlaybackState == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3ecccccd    # 0.4f

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mActionViewIdMapFlip:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mActionViewIdMapFold:Landroid/util/SparseArray;

    :cond_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    :goto_0
    if-ge v9, v7, :cond_6

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v13, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    and-long/2addr v11, v2

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_4

    move v12, v5

    goto :goto_1

    :cond_4
    move v12, v4

    :goto_1
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz v11, :cond_5

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "action count : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable buttons : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaArtistText:Landroid/widget/TextView;

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f080739

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_d
    :goto_7
    return-void
.end method
