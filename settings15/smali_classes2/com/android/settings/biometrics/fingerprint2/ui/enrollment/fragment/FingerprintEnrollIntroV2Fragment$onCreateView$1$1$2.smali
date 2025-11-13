.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint2/lib/model/Unicorn;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    sget-object v3, Lcom/android/settings/biometrics/fingerprint2/lib/model/Unicorn;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/lib/model/Unicorn;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    const v9, 0x7f142a29

    const v11, 0x7f1429ec

    const v5, 0x7f142a25

    const v6, 0x7f142a26

    const v7, 0x7f142a27

    const v8, 0x7f142a28

    const v10, 0x7f142a06

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;-><init>(IIIIIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    const v17, 0x7f142a24

    const v19, 0x7f142a09

    const v13, 0x7f142a20

    const v14, 0x7f142a21

    const v15, 0x7f142a22

    const v16, 0x7f142a23

    const v18, 0x7f142a04

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;-><init>(IIIIIII)V

    :goto_0
    iput-object v2, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    const v4, 0x7f0a0f78

    invoke-virtual {v2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "requireViewById(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ScrollView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setImportantForAccessibility(I)V

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;

    const/4 v7, 0x1

    invoke-direct {v4, v3, v7}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;I)V

    const v7, 0x7f0a0e24

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/google/android/setupdesign/GlifLayout;

    const-class v7, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v2, v7}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v7

    const-string v8, "getMixin(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object v7, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->footerBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1429c8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v11, 0x6

    const v12, 0x7f15045d

    invoke-direct {v10, v8, v4, v11, v12}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {v7, v10}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    iget-object v7, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->footerBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const-string v10, "footerBarMixin"

    if-eqz v7, :cond_11

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    iget-object v13, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    const-string v14, "textModel"

    if-eqz v13, :cond_10

    const v13, 0x7f142a08

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;

    const/4 v15, 0x0

    invoke-direct {v13, v3, v15}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;I)V

    new-instance v15, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v8, 0x5

    invoke-direct {v15, v11, v13, v8, v12}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {v7, v15, v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iget-object v6, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->footerBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz v6, :cond_f

    iget-object v7, v6, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v6, v6, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    const-class v8, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {v2, v8}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v2

    check-cast v2, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8, v7, v9, v4}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$2;

    invoke-direct {v4, v3}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;)V

    iput-object v4, v2, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const-string v4, "getViewLifecycleOwner(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v8, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v7, v6, v9}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/template/FooterButton;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v2, v9, v9, v8, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v2, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->footerBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual {v7, v8}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$4;

    const/4 v9, 0x0

    invoke-direct {v4, v3, v7, v9}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$4;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;Lcom/google/android/setupcompat/template/FooterButton;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v9, v9, v4, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    const-string v4, "null cannot be cast to non-null type com.google.android.setupdesign.GlifLayout"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/setupdesign/GlifLayout;

    iget-object v4, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v4, :cond_d

    iget v4, v4, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->headerText:I

    invoke-virtual {v2, v4}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    iget-object v4, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v4, :cond_c

    const v4, 0x7f142a0b

    invoke-virtual {v2, v4}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupdesign/util/DynamicColorPalette;->getColor(Landroid/content/Context;)I

    move-result v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v15, Ljava/lang/Integer;

    const v4, 0x7f0a07a0

    invoke-direct {v15, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    const v7, 0x7f0a079d

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    const v9, 0x7f0a07b8

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    const v10, 0x7f0a07a6

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    const v11, 0x7f0a07b1

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v12, Ljava/lang/Integer;

    const v13, 0x7f0a07aa

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    filled-new-array/range {v15 .. v20}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    iget-object v7, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/Integer;

    const v4, 0x7f0a069b

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v4, :cond_b

    new-instance v7, Ljava/lang/Integer;

    iget v4, v4, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageTwo:I

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/Integer;

    const v7, 0x7f0a069c

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    iget-object v7, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v7, :cond_a

    new-instance v9, Ljava/lang/Integer;

    iget v7, v7, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageThree:I

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v2, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/Integer;

    const v9, 0x7f0a069d

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    iget-object v9, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v9, :cond_9

    new-instance v10, Ljava/lang/Integer;

    iget v9, v9, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFour:I

    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v2, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/Integer;

    const v10, 0x7f0a069e

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    iget-object v10, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v10, :cond_8

    new-instance v12, Ljava/lang/Integer;

    iget v10, v10, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageFive:I

    invoke-direct {v12, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v2, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/Integer;

    const v12, 0x7f0a069f

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    iget-object v13, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v13, :cond_7

    new-instance v15, Ljava/lang/Integer;

    iget v13, v13, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerMessageSix:I

    invoke-direct {v15, v13}, Ljava/lang/Integer;-><init>(I)V

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v2, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v7, v9, v10, v13}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v4, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    const v4, 0x7f0a069a

    invoke-virtual {v2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v4, 0x7f142a2c

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    if-eq v1, v6, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    const v2, 0x7f0a06a0

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v2, :cond_6

    iget v2, v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerTitleOne:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$onCreateView$1$1$2;->$view:Landroid/view/View;

    const v1, 0x7f0a06a1

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->textModel:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/TextModel;->footerTitleOne:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_5
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v0, 0x0

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v0, 0x0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v0, 0x0

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
