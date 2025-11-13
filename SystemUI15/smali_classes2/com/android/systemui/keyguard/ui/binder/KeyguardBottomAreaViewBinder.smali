.class public Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Companion;

.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->Companion:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Companion;

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KeyguardBottomAreaViewBinder"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final access$updateButton(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isVisible:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->animateReveal:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v2, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/common/ui/binder/IconViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/IconViewBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-static {p0, p1}, Lcom/android/systemui/common/ui/binder/IconViewBinder;->bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/Animatable2;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v2, Landroid/graphics/drawable/Animatable2;

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_6

    instance-of v3, p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    if-eqz v3, :cond_4

    check-cast p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    goto :goto_2

    :cond_4
    move-object p0, v4

    :goto_2
    if-eqz p0, :cond_6

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable2;->start()V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget p0, p0, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Landroid/graphics/drawable/Animatable2;->stop()V

    :cond_6
    :goto_3
    iget-boolean p0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isActivated:Z

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setActivated(Z)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p0, :cond_7

    const v5, 0x11200b0

    goto :goto_4

    :cond_7
    const v5, 0x11200b6

    :goto_4
    invoke-static {v3, v5, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-boolean v0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isSelected:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p0, :cond_8

    const p0, 0x11200c1

    goto :goto_5

    :cond_8
    const p0, 0x11200cb

    :goto_5
    invoke-static {p0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_6

    :cond_9
    move-object p0, v4

    :goto_6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v2, 0x3f9d70a4    # 1.23f

    if-eqz v0, :cond_a

    move v3, v2

    goto :goto_7

    :cond_a
    move v3, v1

    :goto_7
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz v0, :cond_b

    move v1, v2

    :cond_b
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean p0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->isClickable:Z

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setClickable(Z)V

    if-eqz p0, :cond_e

    iget-boolean p0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;->useLongPress:Z

    if-eqz p0, :cond_c

    new-instance p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;-><init>(Landroid/view/View;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/FalsingManager;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;

    invoke-direct {v1, p4, p1, p5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButton$2;-><init>(Lkotlin/jvm/functions/Function1;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/VibratorHelper;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p4, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;

    invoke-direct {p4, p3, p2, p5, p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnLongClickListener;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/ui/binder/KeyguardQuickAffordanceOnTouchListener;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_8

    :cond_c
    new-instance p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnClickListener;

    if-eqz p3, :cond_d

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$OnClickListener;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;Lcom/android/systemui/plugins/FalsingManager;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_9
    return-void
.end method

.method public static final access$updateButtonAlpha(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;Landroid/view/View;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1;

    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$3;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$3;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v0, p0, p3, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$4;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method

.method public static loadFromResources(Landroid/view/View;)Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions;
    .locals 5

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070483

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f070480

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {v2, v3, p0}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions;-><init>(ILandroid/util/Size;)V

    return-object v0
.end method


# virtual methods
.method public final bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$4;
    .locals 18

    move-object/from16 v3, p1

    const v0, 0x7f0a00d8

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v0, 0x7f0a0c09

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const v0, 0x7f0a040f

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f0a089f

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    const v0, 0x7f0a05c1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/view/LaunchableLinearLayout;

    sget-object v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$1;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    sget-object v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$3;

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$3;-><init>(Lcom/android/systemui/animation/view/LaunchableLinearLayout;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->loadFromResources(Landroid/view/View;)Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    new-instance v15, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;

    const/16 v17, 0x0

    move-object v4, v15

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p4

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, v0

    invoke-direct/range {v4 .. v17}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;-><init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Landroid/widget/ImageView;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/VibratorHelper;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/animation/view/LaunchableLinearLayout;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v0, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$4;

    move-object v0, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$4;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lkotlinx/coroutines/DisposableHandle;)V

    return-object v6
.end method
