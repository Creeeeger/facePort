.class public Lcom/samsung/android/multiwindow/OpacityPopupForDeX;
.super Landroid/widget/PopupWindow;
.source "OpacityPopupForDeX.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final blacklist DISMISS_DELAY_TIME:I = 0xbb8

.field private static final blacklist FREEFORM_MIN_OPACITY:F = 0.4f

.field private static final blacklist OPACITY_INITIAL_PROGRESS:I = 0x3c

.field private static final blacklist POPUP_HEIGHT_IN_DPI:I = 0x24

.field private static final blacklist POPUP_WIDTH_FREEFORM_EXTRA_IN_DPI:I = 0xdc

.field private static final blacklist SEEK_BAR_PADDING_IN_DPI:I = 0x28

.field private static final blacklist TAG:Ljava/lang/String; = "OpacityPopupForDeX"

.field private static final blacklist X_OFFSET_IN_DPI:I = 0xc

.field private static final blacklist Y_OFFSET_IN_DPI:I = 0x30


# instance fields
.field private final blacklist mAM:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mAnchor:Landroid/view/ViewGroup;

.field private final blacklist mDismissRunnable:Ljava/lang/Runnable;

.field private final blacklist mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

.field private final blacklist mIsOnPopOverAsSystemWindow:Z

.field private final blacklist mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

.field private blacklist mOpacityProgress:I

.field private final blacklist mOwner:Landroid/view/Window;

.field private blacklist mX:I

.field private blacklist mY:I


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewGroup;Lcom/samsung/android/multiwindow/MultiSplitActions;Z)V
    .locals 18
    .param p1, "anchor"    # Landroid/view/ViewGroup;
    .param p2, "actions"    # Lcom/samsung/android/multiwindow/MultiSplitActions;
    .param p3, "isNightMode"    # Z

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 60
    const v3, 0x10304cf

    goto :goto_0

    .line 61
    :cond_0
    const v3, 0x10304b9

    .line 59
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, v5, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v2, Lcom/samsung/android/multiwindow/OpacityPopupForDeX$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/multiwindow/OpacityPopupForDeX;)V

    iput-object v2, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mDismissRunnable:Ljava/lang/Runnable;

    .line 54
    const/16 v2, 0x3c

    iput v2, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mOpacityProgress:I

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 63
    .local v2, "context":Landroid/content/Context;
    iput-object v1, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAnchor:Landroid/view/ViewGroup;

    .line 64
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mOwner:Landroid/view/Window;

    .line 66
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAM:Landroid/view/accessibility/AccessibilityManager;

    .line 68
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x109016b

    .line 69
    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 70
    .local v6, "contentView":Landroid/view/View;
    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->setContentView(Landroid/view/View;)V

    .line 72
    const/4 v7, 0x0

    .line 73
    .local v7, "shouldBeOnPopOver":Z
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v8

    .line 75
    .local v8, "decor":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v8}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/internal/policy/DecorView;->hasWindowFocusInTask()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 76
    const-string v9, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v2, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 77
    const-string v9, "OpacityPopupForDeX"

    const-string v10, "Permission Denial: requires android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    :cond_1
    const/4 v7, 0x1

    .line 82
    :cond_2
    :goto_1
    iput-boolean v7, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mIsOnPopOverAsSystemWindow:Z

    .line 84
    const v9, 0x10202b0

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    iput-object v9, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    .line 85
    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 86
    invoke-virtual {v9, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 89
    .local v10, "res":Landroid/content/res/Resources;
    const v11, 0x1060313

    invoke-virtual {v10, v11, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 91
    .local v11, "progressTintList":Landroid/content/res/ColorStateList;
    invoke-virtual {v9, v11}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    invoke-virtual {v9, v11}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 93
    const v12, 0x1060311

    invoke-virtual {v10, v12, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v4

    .line 98
    .local v4, "baseDensity":F
    const/high16 v12, 0x41400000    # 12.0f

    mul-float/2addr v12, v4

    float-to-int v12, v12

    .line 99
    .local v12, "xOffset":I
    const/high16 v13, 0x42400000    # 48.0f

    mul-float/2addr v13, v4

    float-to-int v13, v13

    .line 100
    .local v13, "yOffset":I
    const/high16 v14, 0x42100000    # 36.0f

    mul-float/2addr v14, v4

    float-to-int v14, v14

    invoke-virtual {v0, v14}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->setHeight(I)V

    .line 101
    const/high16 v14, 0x435c0000    # 220.0f

    mul-float/2addr v14, v4

    float-to-int v14, v14

    invoke-virtual {v0, v14}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->setWidth(I)V

    .line 102
    const/high16 v14, 0x42200000    # 40.0f

    mul-float/2addr v14, v4

    float-to-int v14, v14

    .line 103
    .local v14, "seekBarPadding":I
    invoke-virtual {v9, v14, v5, v14, v5}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 105
    if-eqz v7, :cond_3

    .line 106
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 107
    .local v9, "location":[I
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 108
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 109
    .local v15, "captionView":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 110
    .local v16, "captionWidth":I
    aget v5, v9, v5

    add-int v5, v5, v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->getWidth()I

    move-result v17

    add-int v17, v12, v17

    sub-int v5, v5, v17

    iput v5, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mX:I

    .line 111
    const/4 v5, 0x1

    aget v5, v9, v5

    add-int/2addr v5, v13

    iput v5, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mY:I

    .line 112
    .end local v9    # "location":[I
    .end local v15    # "captionView":Landroid/view/View;
    .end local v16    # "captionWidth":I
    goto :goto_2

    .line 113
    :cond_3
    iput v12, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mX:I

    .line 114
    iput v13, v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mY:I

    .line 117
    :goto_2
    return-void
.end method

.method private blacklist setOpacityChangeModeEnabled()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getWindowOpacity()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mOpacityProgress:I

    .line 159
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    return-void
.end method


# virtual methods
.method protected final blacklist createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 121
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 122
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mIsOnPopOverAsSystemWindow:Z

    if-eqz v1, :cond_0

    .line 124
    const/16 v1, 0x7d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 126
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x1040208

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 127
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpacityPopupForDeX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    return-object v0
.end method

.method public whitelist dismiss()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAnchor:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 164
    iput p2, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mOpacityProgress:I

    .line 165
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    int-to-float v1, p2

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setWindowOpacity(F)V

    .line 166
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 170
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAnchor:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAM:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAnchor:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    :cond_0
    return-void
.end method

.method public blacklist show()Z
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mIsOnPopOverAsSystemWindow:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAnchor:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mX:I

    iget v3, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAnchor:Landroid/view/ViewGroup;

    const/16 v1, 0x35

    iget v2, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mX:I

    iget v3, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->showAtLocation(Landroid/view/View;III)V

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->setOpacityChangeModeEnabled()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAM:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mAnchor:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_2
    return v1
.end method
