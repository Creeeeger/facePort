.class public final Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;
.super Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appIconImageView:Landroid/widget/ImageView;

.field public final appNameTextView:Landroid/widget/TextView;

.field public final captionHandle:Landroid/view/View;

.field public final captionView:Landroid/view/View;

.field public final closeWindowButton:Landroid/widget/ImageButton;

.field public final expandMenuButton:Landroid/widget/ImageButton;

.field public final maximizeButtonView:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

.field public final maximizeWindowButton:Landroid/widget/ImageButton;

.field public final openMenuButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnGenericMotionListener;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnLongClickListener;",
            "Landroid/view/View$OnGenericMotionListener;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;-><init>(Landroid/view/View;)V

    new-instance v4, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;-><init>(Landroid/content/Context;)V

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-static {v4}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicLightColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-static {v4}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07030e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance v4, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07030d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {v4, v5, v7, v8, v6}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070313

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070312

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;-><init>(II)V

    new-instance v4, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070310

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07030f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder$DrawableInsets;-><init>(II)V

    const v4, 0x7f0a0353

    invoke-virtual {p1, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->captionView:Landroid/view/View;

    const v5, 0x7f0a024b

    invoke-virtual {p1, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->captionHandle:Landroid/view/View;

    const v6, 0x7f0a087a

    invoke-virtual {p1, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->openMenuButton:Landroid/view/View;

    const v7, 0x7f0a02a7

    invoke-virtual {p1, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->closeWindowButton:Landroid/widget/ImageButton;

    const v8, 0x7f0a042e

    invoke-virtual {p1, v8}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->expandMenuButton:Landroid/widget/ImageButton;

    const v8, 0x7f0a06ac

    invoke-virtual {p1, v8}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    iput-object v8, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeButtonView:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    const v9, 0x7f0a06b4

    invoke-virtual {p1, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeWindowButton:Landroid/widget/ImageButton;

    const v10, 0x7f0a010d

    invoke-virtual {p1, v10}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->appNameTextView:Landroid/widget/TextView;

    const v11, 0x7f0a010c

    invoke-virtual {p1, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->appIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v5, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v6, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v7, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v7, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p8

    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->onHoverAnimationFinishedListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    invoke-static {}, Lcom/android/window/flags/Flags;->enableThemedAppHeaders()Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->captionView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v1, :cond_1

    const v1, 0x11200cb

    goto :goto_0

    :cond_1
    const v1, 0x11200cf

    goto :goto_0

    :cond_2
    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v1, :cond_3

    const v1, 0x11200cd

    goto :goto_0

    :cond_3
    const v1, 0x11200c5

    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v4, v3, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result v0

    const v1, 0x11200b3

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getTopOpaqueSystemBarsAppearance()I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result v0

    const v4, 0x11200b6

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getTopOpaqueSystemBarsAppearance()I

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v4

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->isDarkMode()Z

    move-result v0

    const/16 v4, 0xff

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v0, :cond_a

    const/16 v0, 0x8c

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->isDarkMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v0, :cond_b

    const/16 v0, 0xa6

    goto :goto_7

    :cond_b
    move v0, v4

    :goto_7
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v5, v3, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-ne v0, v4, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :goto_8
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->closeWindowButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeWindowButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->expandMenuButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->appNameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result p1

    const/4 v5, 0x1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_9

    :cond_d
    const/16 p1, 0x8

    :goto_9
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->appNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->appIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->closeWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->expandMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    const v0, 0x101030e

    const v1, 0x101045c

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v3, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->openMenuButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->closeWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->isDarkMode()Z

    move-result p1

    sget v0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;->maximizeButtonView:Lcom/android/wm/shell/windowdecor/MaximizeButtonView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/window/flags/Flags;->enableThemedAppHeaders()Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->maximizeWindow:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f06011a

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_a

    :cond_e
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MaximizeButtonView;->maximizeWindow:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f06011b

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_f
    :goto_a
    return-void
.end method

.method public final isDarkMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onHandleMenuClosed()V
    .locals 0

    return-void
.end method

.method public final onHandleMenuOpened()V
    .locals 0

    return-void
.end method
