.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind$default(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$3;
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const v0, 0x7f0a0723

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    const v0, 0x7f0a0538

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v18

    const v0, 0x7f0a0724

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/ImageView;

    const v0, 0x7f0a0726

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageView;

    const v0, 0x7f0a072e

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f0a072f

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/FrameLayout;

    const v0, 0x7f0a0729

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    new-instance v10, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a0727

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/ImageView;

    const v0, 0x7f0a0728

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Space;

    const v0, 0x7f0a0c14

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    const v0, 0x7f0a0337

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/widget/ImageView;

    const v0, 0x7f0a0e30

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->isVisible()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v25

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/Colors;

    const v1, -0x12000001

    const/high16 v2, -0x1000000

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/Colors;-><init>(II)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v26

    iget v0, v14, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->defaultColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v27

    move-object/from16 v21, v27

    new-instance v28, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v4, v28

    invoke-direct/range {v28 .. v28}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v13, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1;

    move-object v0, v13

    const/16 v22, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, v25

    move-object/from16 v9, p3

    move-object/from16 v29, v13

    move-object/from16 v13, v26

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v19, v24

    move-object/from16 v20, v23

    invoke-direct/range {v0 .. v22}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/settingslib/graph/SignalDrawable;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v6, p0

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    move-object/from16 v7, p1

    iget-object v1, v7, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-ne v1, v0, :cond_1

    new-instance v8, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$2;

    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v28

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v8}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_1
    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$3;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$3;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-object v6
.end method
