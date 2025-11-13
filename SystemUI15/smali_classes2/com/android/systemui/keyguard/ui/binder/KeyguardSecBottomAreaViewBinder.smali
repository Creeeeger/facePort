.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;
.super Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;-><init>()V

    return-void
.end method

.method public static final bind(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;)Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;
    .locals 24

    move-object/from16 v11, p0

    const v0, 0x7f0a0597

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0a00d8

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0a0625

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    const v0, 0x7f0a09e0

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    const v0, 0x7f0a0c09

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const v0, 0x7f0a040f

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const v0, 0x7f0a05ce

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v0, 0x7f0a0e05

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0702bf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0704ae

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x1fc

    const/16 v23, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;-><init>(IIIIILandroid/util/Size;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateShortcutPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateIndicationPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1;

    const/4 v10, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v4, p0

    move-object v7, v12

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Landroid/widget/LinearLayout;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v11, v0, v13}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    move-object/from16 v2, p1

    invoke-direct {v1, v12, v11, v2, v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lkotlinx/coroutines/DisposableHandle;)V

    return-object v1
.end method
