.class public Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;
.super Lcom/android/systemui/screenshot/DraggableConstraintLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActionButtonViewBinder:Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;

.field public final mActionChips:Ljava/util/ArrayList;

.field public mActionContainer:Landroid/widget/LinearLayout;

.field public mActionContainerBackground:Landroid/view/View;

.field public mClipboardCallbacks:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;

.field public mClipboardPreview:Landroid/view/View;

.field public mDismissButton:Landroid/view/View;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mHiddenPreview:Landroid/widget/TextView;

.field public mImagePreview:Landroid/widget/ImageView;

.field public mMinimizedPreview:Landroid/widget/LinearLayout;

.field public mPreviewBorder:Landroid/view/View;

.field public mRemoteCopyChip:Landroid/view/View;

.field public mShareChip:Landroid/view/View;

.field public mTextPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/DraggableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;

    invoke-direct {p1}, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionButtonViewBinder:Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 8

    const v0, 0x7f0a00a4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02a0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    const v0, 0x7f0a0916

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    const v0, 0x7f0a0522

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0a0d1e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mTextPreview:Landroid/widget/TextView;

    const v0, 0x7f0a04ec

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0a0718

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0b44

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mShareChip:Landroid/view/View;

    const v0, 0x7f0a09ac

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mRemoteCopyChip:Landroid/view/View;

    const v0, 0x7f0a0391

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDismissButton:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/Flags;->screenshotShelfUi2()V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionButtonViewBinder:Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mRemoteCopyChip:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->Companion:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;

    new-instance v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v5, 0x7f080827

    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v6, 0x7f1303a2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    new-instance v4, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;->withNextId(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;->bind(Landroid/view/View;Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionButtonViewBinder:Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;

    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mShareChip:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v4, 0x7f080af3

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v5, 0x1040e54

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v6, v4, v7}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$2;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;)V

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;->withNextId(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;->bind(Landroid/view/View;Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-super {p0}, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->onFinishInflate()V

    return-void
.end method

.method public final setCallbacks(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mCallbacks:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;

    check-cast p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;

    invoke-static {}, Lcom/android/systemui/Flags;->screenshotShelfUi2()V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDismissButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardCallbacks:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$ClipboardOverlayCallbacks;

    return-void
.end method

.method public final setInsets(Landroid/view/WindowInsets;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-nez v1, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget v1, v2, Landroid/graphics/Insets;->bottom:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v3

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    new-instance p2, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Insets;->left:I

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    iget v6, v3, Landroid/graphics/Insets;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v3, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p2, v4, v5, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Insets;->left:I

    iget v4, v3, Landroid/graphics/Insets;->top:I

    iget v5, v3, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p2, v1, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final setMinimized(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mClipboardPreview:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
