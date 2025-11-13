.class public Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButtonEndDone:Landroid/widget/Button;

.field public mButtonEndNext:Landroid/widget/Button;

.field public mButtonStartRestart:Landroid/widget/Button;

.field public mButtonStartSkip:Landroid/widget/Button;

.field public mContext:Landroid/content/Context;

.field public mDotIndicators:[Landroid/widget/ImageView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mPageList:Ljava/util/ArrayList;

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;

.field public mViewPagerItems:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static getViewPagerResource$1()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    const v1, 0x7f0d024e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d024f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0d0250

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0d0251

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0d0252

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0be4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a110c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->getViewPagerResource$1()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Landroid/view/View;

    iput-object v3, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPagerItems:[Landroid/view/View;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPagerItems:[Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->getViewPagerResource$1()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mPageList:Ljava/util/ArrayList;

    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPagerItems:[Landroid/view/View;

    array-length v4, v2

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mPageList:Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$GesturePagerAdapter;

    iget-object v4, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mPageList:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$GesturePagerAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v1, 0x7f0a02b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonStartRestart:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonEndDone:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a02b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonStartSkip:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v4}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a02ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mButtonEndNext:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v4}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$3;-><init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v1, 0x7f0a1101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mDotIndicators:[Landroid/widget/ImageView;

    move v2, v3

    :goto_2
    iget-object v4, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v6, 0xc

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v3, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mDotIndicators:[Landroid/widget/ImageView;

    aput-object v4, v5, v2

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const v1, 0x7f0a04e3

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState$1(I)V

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$1;-><init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;Landroid/view/View;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$2;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment$2;-><init>(Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "BottomSheetBehavior"

    const-string v2, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object p0, p0, Lcom/android/settings/inputmethod/TrackpadGestureDialogFragment;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
