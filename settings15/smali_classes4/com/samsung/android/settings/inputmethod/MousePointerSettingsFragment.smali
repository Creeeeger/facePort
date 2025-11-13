.class public Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mColorEntityViews:[Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mLastProgress:I

.field public mMouseCursorImg:Landroid/widget/ImageView;

.field public mMousePointerView:Landroid/view/View;

.field public mMousePreview:Landroid/view/View;

.field public mPointerColorObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

.field public mPointerSizeObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

.field public mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mTouchInProgress:Z

.field public pointerColorList:[I


# direct methods
.method public static -$$Nest$msetMousePointerSize(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    if-lt p2, p0, :cond_0

    const/16 p0, 0x9

    if-gt p2, p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "mouse_pointer_size_step"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long p0, p2

    const p2, 0xbc039

    const v0, 0x12cda

    invoke-static {p2, v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$5;

    const v1, 0x7f1701c9

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createMousePointerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f0d090b

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    goto :goto_0

    :cond_3
    const v0, 0x7f0d090a

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    const p2, 0x7f0a0461

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePreview:Landroid/view/View;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePreview:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePreview:Landroid/view/View;

    const v0, 0x7f0a09b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMouseCursorImg:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    const v0, 0x7f0a09b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    const v7, 0x7f0a0d70

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    const v6, 0x7f0a0d71

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v6, 0x7f0a0cc6

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v6, v5, v4, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->updatePointerColor()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->updatePointerSize()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f030118

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->pointerColorList:[I

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/view/View;

    const v5, 0x7f0a09ba

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v0, v4

    const v5, 0x7f0a09c0

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v0, v2

    const v5, 0x7f0a09bc

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v0, v3

    const v3, 0x7f0a09c1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v0, v5

    const v3, 0x7f0a09bd

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v0, v5

    const v3, 0x7f0a09be

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v0, v5

    const v3, 0x7f0a09bb

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x6

    aput-object p1, v0, v3

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    move p1, v4

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    array-length v3, v0

    const v5, 0x7f0a0b6e

    if-ge p1, v3, :cond_b

    aget-object v0, v0, p1

    const v3, 0x7f0a0b6f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->pointerColorList:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_a

    const v3, 0x7f06045b

    :goto_4
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_5

    :cond_a
    const v3, 0x7f06045a

    goto :goto_4

    :goto_5
    iget-object v3, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getContentDescriptionAtIndex(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    aget-object v0, v0, p1

    new-instance v3, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;-><init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getCurrentPosition()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getContentDescriptionAtIndex(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    const v0, 0x7f0a046d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    const p2, 0x7f0a0475

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    const v0, 0x7f0a08ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    const v1, 0x7f0a0cbb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f142776

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f1424ec

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "mouse_pointer_size_step"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eq p1, v1, :cond_c

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :goto_6
    new-instance p2, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;-><init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePointerView:Landroid/view/View;

    return-object p0
.end method

.method public final getContentDescriptionAtIndex(IZ)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f140886

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f140980

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f1409a0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f14099d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f1409ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f140990

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f1409ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f14097f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, " "

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f142a95

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v1, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, v1, v0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrentPosition()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->pointerColorList:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const-string/jumbo v3, "mouse_pointer_color"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030118

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_1

    aget v1, p0, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0xbc039

    return p0
.end method

.method public final handleClickOnColorItem(Landroid/view/View;Z)V
    .locals 3

    const v0, 0x7f0a0b6e

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getCurrentPosition()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06045b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06045a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getContentDescriptionAtIndex(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->createMousePointerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->createMousePointerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerColorObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;-><init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerColorObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerSizeObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;-><init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerSizeObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_pointer_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerColorObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_pointer_size_step"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerSizeObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerColorObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerSizeObserver:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final updatePointerColor()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "mouse_pointer_color"

    aget v0, v0, v4

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMouseCursorImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    :goto_1
    array-length v1, p0

    if-ge v4, v1, :cond_2

    aget v1, p0, v4

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_2
    aget p0, v3, v4

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final updatePointerSize()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_pointer_size_step"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMouseCursorImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-double v5, v3

    int-to-double v7, v0

    sub-int/2addr v0, v2

    int-to-double v2, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v9

    sub-double/2addr v7, v2

    mul-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v2, v4

    mul-double/2addr v2, v7

    double-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMouseCursorImg:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
