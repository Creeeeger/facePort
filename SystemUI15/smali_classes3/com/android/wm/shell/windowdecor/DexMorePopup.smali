.class public final Lcom/android/wm/shell/windowdecor/DexMorePopup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBackgroundColor:I

.field public final mContext:Landroid/content/Context;

.field public final mDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

.field public mFirstButtonId:I

.field public mHideAnimation:Landroid/animation/Animator;

.field public final mIsNewDexMode:Z

.field public final mIsNightMode:Z

.field public mIsPopupShowing:Z

.field public mLastButtonId:I

.field public final mMoreButtons:Landroid/util/SparseArray;

.field public mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

.field public final mOnClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public final mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

.field public final mPrimaryButtonSet:Landroid/view/ViewGroup;

.field public final mRootView:Landroid/view/View;

.field public final mSecondaryButtonSet:Landroid/view/ViewGroup;

.field public mShowAnimation:Landroid/animation/Animator;

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMoreButtons:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsNewDexMode:Z

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    const v2, 0x10302e3

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mOnClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iget-object p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsNightMode:Z

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eqz p1, :cond_0

    const p1, 0x106032f

    goto :goto_0

    :cond_0
    const p1, 0x1060330

    :goto_0
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mBackgroundColor:I

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0369

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mRootView:Landroid/view/View;

    const p3, 0x7f0a0918

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    const v0, 0x7f0a0ad1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mFirstButtonId:I

    iput v1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mLastButtonId:I

    iget-object v2, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {p0, p3, v2}, Lcom/android/wm/shell/windowdecor/DexMorePopup;->setButtonSetVisibility(Landroid/view/ViewGroup;Z)V

    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v4

    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/windowdecor/DexMorePopup;->setButtonSetVisibility(Landroid/view/ViewGroup;Z)V

    const p2, 0x7f0a0341

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    move p2, v4

    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of v0, p3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;

    if-eqz v0, :cond_8

    check-cast p3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->isButtonVisible(IIZ)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    move v5, v4

    goto :goto_4

    :cond_3
    move v5, v2

    :goto_4
    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsNewDexMode:Z

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const v5, 0x7f0a024d

    if-ne v0, v5, :cond_4

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    :cond_4
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mFirstButtonId:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mFirstButtonId:I

    :cond_5
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mLastButtonId:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMoreButtons:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mOnClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsNightMode:Z

    const v5, 0x7f0a073e

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f13107f

    goto :goto_5

    :cond_6
    const v0, 0x7f13107e

    :goto_5
    invoke-virtual {p3, v0, v2}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->setTextView(IZ)V

    goto :goto_6

    :cond_7
    invoke-virtual {p3, v1, v2}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->setTextView(IZ)V

    :cond_8
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMoreButtons:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMoreButtons:Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mLastButtonId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->setVerticalPadding(Z)V

    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMoreButtons:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mFirstButtonId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->setVerticalPadding(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final setButtonSetVisibility(Landroid/view/ViewGroup;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_1
    const/4 p2, 0x0

    move v1, p2

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;

    if-eqz v3, :cond_7

    check-cast v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mOnClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iget-boolean v6, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsNightMode:Z

    const/4 v7, -0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMoreButtons:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v8

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->setEnabled(Z)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v3, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mFirstButtonId:I

    if-ne v3, v7, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mFirstButtonId:I

    :cond_2
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mLastButtonId:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const v5, 0x7f0a08e7

    if-ne v3, v5, :cond_4

    iget-boolean v3, v4, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    if-eqz v3, :cond_3

    const v3, 0x7f131091

    goto :goto_1

    :cond_3
    const v3, 0x7f131090

    :goto_1
    invoke-virtual {v2, v3, v6}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->setTextView(IZ)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v7, v6}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->setTextView(IZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    const v8, 0x7f0a024d

    if-ne v4, v8, :cond_6

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz v3, :cond_7

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMoreButtons:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v7, v6}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->setTextView(IZ)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method
