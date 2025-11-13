.class public final Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public accessibilityHintType:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;

.field public final aodFpDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final bgView:Landroid/widget/ImageView;

.field public final iconView:Landroid/widget/ImageView;

.field public final longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/common/ui/view/LongPressHandlingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v5, 0x7f0a0370

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->iconView:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7f0a036f

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setId(I)V

    iput-object v5, v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->bgView:Landroid/widget/ImageView;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->aodFpDrawable:Lcom/airbnb/lottie/LottieDrawable;

    sget-object v2, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;->NONE:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;

    iput-object v2, v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->accessibilityHintType:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;

    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    sget-object v6, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->LOCK:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->getIconState(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;Z)[I

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f08097d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v10, 0x7f0a0651

    invoke-virtual {v2, v8, v9, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    sget-object v8, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->UNLOCK:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    invoke-static {v8, v7}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->getIconState(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;Z)[I

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f080b45

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v12, 0x7f0a0ddf

    invoke-virtual {v2, v9, v11, v12}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    sget-object v9, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;->FINGERPRINT:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    invoke-static {v9, v7}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->getIconState(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;Z)[I

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f080920

    invoke-virtual {v13, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v14, 0x7f0a0653

    invoke-virtual {v2, v11, v13, v14}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    const/4 v11, 0x1

    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->getIconState(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;Z)[I

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    const v15, 0x7f08097e

    invoke-virtual {v13, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v15, 0x7f0a0652

    invoke-virtual {v2, v6, v13, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    invoke-static {v8, v11}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->getIconState(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;Z)[I

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v13, 0x7f080b46

    invoke-virtual {v8, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v13, 0x7f0a0de0

    invoke-virtual {v2, v6, v8, v13}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    iget-object v6, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v8, 0x7f12003e

    invoke-static {v8, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v15, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda7;

    invoke-direct {v15, v10, v6, v8, v13}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda7;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v13, v15, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupIconStates$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupIconStates$1;-><init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;)V

    invoke-virtual {v6, v8}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    invoke-static {v9, v11}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->getIconState(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;Z)[I

    move-result-object v6

    const v8, 0x7f0a0dcb

    invoke-virtual {v2, v6, v1, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f060a9b

    invoke-virtual {v6, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v8, 0x7f0a07e0

    invoke-virtual {v2, v1, v6, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f0807b9

    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v14, v12, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f0814a2

    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v12, v14, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f080c58

    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const v6, 0x7f0a0651

    const v8, 0x7f0a0652

    invoke-virtual {v2, v8, v6, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v9, 0x7f080c7c

    invoke-virtual {v1, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v6, v8, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f0814a3

    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const v6, 0x7f0a0de0

    invoke-virtual {v2, v6, v12, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v8, 0x7f0814a4

    invoke-virtual {v1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v12, v6, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f080c7f

    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const v6, 0x7f0a0651

    invoke-virtual {v2, v6, v12, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v8, 0x7f0814a6

    invoke-virtual {v1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v12, v6, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v8, 0x7f0807b8

    invoke-virtual {v1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v14, v6, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f0814a5    # 1.808822E38f

    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const v6, 0x7f0a0652

    invoke-virtual {v2, v12, v6, v1, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    new-instance v1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;-><init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f0807a5

    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getIconState(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;Z)[I
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget-object v2, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/util/StateSet;->NOTHING:[I

    return-object p0

    :cond_1
    const p0, 0x10100a5

    aput p0, v1, v2

    goto :goto_0

    :cond_2
    const p0, 0x10100a6

    aput p0, v1, v2

    goto :goto_0

    :cond_3
    const p0, 0x10100a4

    aput p0, v1, v2

    :goto_0
    if-eqz p1, :cond_4

    const p0, 0x10100a3

    aput p0, v1, v3

    goto :goto_1

    :cond_4
    const p0, -0x10100a3

    aput p0, v1, v3

    :goto_1
    return-object v1
.end method
