.class public final Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActionViewIdMap:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentText:Landroid/widget/TextView;

.field public final mDisplayX:I

.field public final mDisplayY:I

.field public final mDurationText:Landroid/widget/TextView;

.field public final mFloatingPanelView:Landroid/widget/LinearLayout;

.field public final mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

.field public final mMediaArtistText:Landroid/widget/TextView;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaImageView:Landroid/widget/ImageView;

.field public final mMediaNextButton:Landroid/widget/LinearLayout;

.field public mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

.field public mMediaPanelPopupType:I

.field public final mMediaPauseButton:Landroid/widget/LinearLayout;

.field public final mMediaPreviousButton:Landroid/widget/LinearLayout;

.field public final mMediaResumeButton:Landroid/widget/LinearLayout;

.field public final mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

.field public final mMediaSeekNextButton:Landroid/widget/LinearLayout;

.field public final mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

.field public final mMediaTitleText:Landroid/widget/TextView;

.field public mMetadataChanged:Z

.field public mPlaybackState:Landroid/media/session/PlaybackState;

.field public final mSeekBarControlListener:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;

.field public mSeekBarEnabled:Z

.field public mSeekBarFromUser:Z

.field public final mSeekBarText:Landroid/widget/TextView;

.field public mSeekPosition:J

.field public final mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMetadataChanged:Z

    iput-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    iput-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V

    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mActionViewIdMap:Landroid/util/SparseArray;

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

    const-wide/16 v7, 0x204

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v7, 0x7f0a0093

    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 v8, 0x202

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v8, 0x7f0a008e

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 v9, 0x100

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const v9, 0x7f0a0095

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v10, 0x7f0a0094

    invoke-virtual {v3, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    iput-object v11, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    invoke-direct {v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    const v3, 0x7f0a06ec

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v2, v3, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    const v2, 0x7f0a0d3e

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    const v2, 0x7f0a0115

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaArtistText:Landroid/widget/TextView;

    const v2, 0x7f0a031c

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    const v2, 0x7f0a03dc

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    const v2, 0x7f0a0ae5

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    const v2, 0x7f0a06d5

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v3, Landroid/graphics/Point;->x:I

    iput v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayX:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    iput v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayY:I

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v2

    const v15, 0x7f0a0229

    const v5, 0x7f0a09cb

    const v6, 0x7f0a08d3

    const v3, 0x7f0a06db

    const-wide v12, 0x3ff199999999999aL    # 1.1

    const v4, 0x7f0a0ae6

    const v14, 0x7f0a0ae7

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v7, 0x4004cccccccccccdL    # 2.6

    invoke-virtual {v0, v9, v10, v7, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v9, v10, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x3ff547ae147ae148L    # 1.33

    invoke-virtual {v0, v9, v10, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    const-wide v2, 0x4018f5c28f5c28f6L    # 6.24

    const-wide v7, 0x401e28f5c28f5c29L    # 7.54

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    const-wide v2, 0x400e28f5c28f5c29L    # 3.77

    const-wide v7, 0x4012333333333333L    # 4.55

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    const-wide v2, 0x4012b851eb851eb8L    # 4.68

    const-wide v7, 0x40165c28f5c28f5cL    # 5.59

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x4013333333333333L    # 4.8

    const-wide v6, 0x4017333333333333L    # 5.8

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f0a0b73

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x4007333333333333L    # 2.9

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x7f0a090e

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a0b74

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    const-wide v4, 0x4011333333333333L    # 4.3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a090f

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x401619999999999aL    # 5.525

    invoke-virtual {v0, v2, v3, v9, v10}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a022a

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v4, 0x40156147ae147ae1L    # 5.345

    invoke-virtual {v0, v4, v5, v9, v10}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a022b

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v9, v10}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a022c

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v9, v10}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_0
    const v7, 0x7f0a0b73

    const v8, 0x7f0a090e

    const v16, 0x7f0a090f

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    const-wide v18, 0x4020b33333333333L    # 8.35

    const-wide/16 v20, 0x0

    const-wide v22, 0x4020b33333333333L    # 8.35

    const-wide/16 v24, 0x0

    move-object/from16 v1, p1

    const v17, 0x7f0a0b74

    move v15, v4

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-wide/from16 v7, v22

    move-wide v12, v9

    move-wide/from16 v9, v24

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    const v1, 0x7f0a06ef

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x4008cccccccccccdL    # 3.1

    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x3ff199999999999aL    # 1.1

    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a06db

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x400599999999999aL    # 2.7

    invoke-virtual {v0, v12, v13, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    const-wide v2, 0x402cdc28f5c28f5cL    # 14.43

    const-wide v4, 0x4017eb851eb851ecL    # 5.98

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    const-wide v2, 0x402447ae147ae148L    # 10.14

    const-wide v4, 0x4010a3d70a3d70a4L    # 4.16

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    const-wide v2, 0x4025947ae147ae14L    # 10.79

    const-wide v4, 0x4011ae147ae147aeL    # 4.42

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a08d3

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x4026333333333333L    # 11.1

    const-wide v4, 0x4012666666666666L    # 4.6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a09cb

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a0b73

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x401f333333333333L    # 7.8

    const-wide v4, 0x400999999999999aL    # 3.2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a090e

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a0b74

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x402099999999999aL    # 8.3

    const-wide v4, 0x400b333333333333L    # 3.4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a090f

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a0229

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x401e570a3d70a3d7L    # 7.585

    invoke-virtual {v0, v2, v3, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a022a

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v4, 0x401ca8f5c28f5c29L    # 7.165

    invoke-virtual {v0, v4, v5, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a022b

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a022c

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v12, v13}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->setupButtons()V

    return-void
.end method

.method public static makeCurrentText(I)Ljava/lang/String;
    .locals 6

    div-int/lit16 p0, p0, 0x3e8

    div-int/lit16 v0, p0, 0xe10

    const-string v1, ""

    const-string v2, ":"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "0"

    const/16 v4, 0xa

    if-nez v1, :cond_1

    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v4, :cond_1

    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v5, p0, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    rem-int/lit8 p0, p0, 0x3c

    if-ge p0, v4, :cond_2

    invoke-static {p0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeDurationText(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, ""

    const-string v4, ":"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "0"

    const-wide/16 v5, 0xa

    const-wide/16 v7, 0x3c

    if-nez v1, :cond_1

    div-long v9, p0, v7

    rem-long/2addr v9, v7

    cmp-long v1, v9, v5

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v9, p0, v7

    rem-long/2addr v9, v7

    invoke-static {v9, v10, v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    rem-long/2addr p0, v7

    cmp-long v3, p0, v5

    if-gez v3, :cond_2

    invoke-static {v2, p0, p1}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkPlaybackPosition(J)V
    .locals 2

    const-string v0, "FlexMediaPanel"

    const-string v1, "MediaPanel checkPlaybackPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final clearController()V
    .locals 2

    const-string v0, "FlexMediaPanel"

    const-string v1, "MediaPanel clearController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getRatioLayoutParams(DD)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayX:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    div-double/2addr v1, p1

    double-to-int v1, v1

    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDisplayY:I

    int-to-double v2, p0

    mul-double/2addr v2, p3

    div-double/2addr v2, p1

    double-to-int p0, v2

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final onClickButton(II)V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    const-string v1, "FlexMediaPanel"

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MediaPanel onClick mMediaPauseButton mMediaController : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logging : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPlaybackState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0098

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    goto/16 :goto_3

    :cond_1
    const v0, 0x7f0a0097

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    goto/16 :goto_3

    :cond_2
    const v0, 0x7f0a0093

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto/16 :goto_3

    :cond_3
    const v0, 0x7f0a008e

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto/16 :goto_3

    :cond_4
    const v0, 0x7f0a0094

    const-wide/16 v1, 0xa

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x0

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v7

    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    cmp-long p1, v11, v5

    if-ltz p1, :cond_7

    add-long/2addr v7, v3

    cmp-long p1, v7, v9

    if-gez p1, :cond_7

    add-long/2addr v11, v1

    iput-wide v11, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    add-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onMediaPanelPopupShow(I)V

    goto :goto_3

    :cond_7
    :goto_1
    return-void

    :cond_8
    const v0, 0x7f0a0095

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    cmp-long p1, v9, v5

    if-gtz p1, :cond_a

    sub-long/2addr v7, v3

    cmp-long p1, v7, v5

    if-lez p1, :cond_a

    sub-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    if-gez p1, :cond_9

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :goto_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->onMediaPanelPopupShow(I)V

    goto :goto_3

    :cond_a
    return-void

    :cond_b
    :goto_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "F003"

    invoke-static {p1, p0, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_c
    return-void

    :cond_d
    :goto_4
    const-string p0, "MediaPanel onClickButton mMediaController or getPlaybackState == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onMediaPanelPopupShow(I)V
    .locals 5

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopupType:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->removeView()V

    :cond_1
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopupType:I

    if-ne p1, v1, :cond_4

    iget-wide v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    long-to-int p1, v2

    goto :goto_1

    :cond_4
    iget-wide v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    long-to-int p1, v2

    mul-int/lit8 p1, p1, -0x1

    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f110004

    invoke-virtual {p0, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v2, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;->mSeekTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 p0, 0x2bc

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setupButtons()V
    .locals 3

    const-string v0, "FlexMediaPanel"

    const-string v1, "MediaPanel setupButtons"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPreviousButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaNextButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekPreviousButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekNextButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateImmersiveState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateMediaPanel()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    const-string v2, "FlexMediaPanel"

    if-nez v1, :cond_0

    const-string v0, "MediaPanel updateMediaPanel mMediaController == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_1

    const-string v0, "MediaPanel updateMediaPanel getPlaybackState == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MediaPanel updateMediaPanel playbackState.getState : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPlaybackState.getPosition : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaArtistText:Landroid/widget/TextView;

    const-string v5, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaImageView:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    const v6, 0x7f080739

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const-string v4, "android.media.metadata.TITLE"

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v9, "android.media.metadata.DURATION"

    const v10, 0x3ecccccd    # 0.4f

    if-nez v1, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mActionViewIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v8

    :goto_2
    if-ge v12, v1, :cond_9

    iget-object v13, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mActionViewIdMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    iget-object v14, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mActionViewIdMap:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    and-long v13, v4, v14

    cmp-long v13, v13, v6

    if-eqz v13, :cond_7

    const/4 v14, 0x1

    goto :goto_3

    :cond_7
    move v14, v8

    :goto_3
    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz v13, :cond_8

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action count : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable buttons : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v9}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v11

    long-to-int v1, v11

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateSeekButton(IJ)V

    :cond_a
    :goto_5
    const/4 v1, 0x3

    :try_start_0
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_7

    :cond_b
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    if-eq v3, v1, :cond_d

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_c

    goto :goto_6

    :cond_c
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    :cond_d
    :goto_6
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaResumeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPauseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const-string v3, "MediaPanel updatePlayPauseIcon mPlaybackState.getState is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    const-wide/16 v10, 0x100

    and-long/2addr v4, v10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    move v4, v8

    :goto_8
    const-string/jumbo v5, "updateSeekbarInfo isSupportSeekBar : "

    invoke-static {v5, v2, v4}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const v5, 0x7f0606b1

    if-eqz v3, :cond_12

    if-eqz v4, :cond_12

    invoke-virtual {v3, v9}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v9}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v9

    long-to-int v9, v9

    cmp-long v10, v3, v6

    if-lez v10, :cond_f

    iget-object v10, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeCurrentText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeDurationText(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_f
    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MediaPanel updateSeekbarInfo duration : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x64

    cmp-long v9, v3, v9

    if-gtz v9, :cond_10

    const-string v3, "MediaPanel updateSeekbarInfo hide seekbar"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    goto :goto_a

    :cond_10
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0606b0

    invoke-static {v10, v9}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-boolean v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMetadataChanged:Z

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iput-boolean v8, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMetadataChanged:Z

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateSeekbarPosition()V

    :goto_a
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    if-ne v2, v1, :cond_13

    invoke-virtual {v0, v6, v7}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->checkPlaybackPosition(J)V

    goto :goto_b

    :cond_12
    const-string v1, "MediaFloatingUI updateSeekbarInfo mediaMetadata is null"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_13
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->setupButtons()V

    return-void
.end method

.method public final updateSeekButton(IJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x64

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    if-le p1, v1, :cond_0

    cmp-long v1, p2, v4

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mFloatingPanelView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    add-int/lit16 p1, p1, 0x3e8

    int-to-long v6, p1

    cmp-long p1, v6, p2

    if-gez p1, :cond_1

    cmp-long p1, p2, v4

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public final updateSeekbarPosition()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaPanel updateSeekbarPosition mMediaController : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPlaybackState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSeekbarFromUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    const-string v3, "FlexMediaPanel"

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v2, v1, 0x3e8

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v4

    const-string v5, "android.media.metadata.DURATION"

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "MediaPanel updateSeekbarPosition mPlaybackState.getState() : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", currentPosition : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", current : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", max : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v4, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeCurrentText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeDurationText(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mCurrentText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :goto_1
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateSeekButton(IJ)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    return-void
.end method
