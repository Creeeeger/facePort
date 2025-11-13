.class public final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind$default(Landroid/view/ViewGroup;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/AuthPanelController;ZLcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v5, p1

    const v0, 0x7f0a0d34

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const v0, 0x7f0a0c99

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const v0, 0x7f0a034a

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const v0, 0x7f0a0330

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0505

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const v0, 0x7f0a0424

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    const v0, 0x7f0a0243

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v16, v3

    const v0, 0x7f0a03fd

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v12, v0

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;

    move-object v0, v2

    const/16 v18, 0x0

    const-wide/16 v13, 0xbb8

    move/from16 v1, p4

    move-object/from16 v19, v2

    move-object/from16 v2, p3

    move-object/from16 v20, v3

    move-object/from16 v3, p2

    move-object/from16 v5, p0

    move-object/from16 v9, p5

    move-object/from16 v17, p1

    invoke-direct/range {v0 .. v18}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;-><init>(ZLcom/android/systemui/biometrics/AuthPanelController;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/ImageView;Landroid/widget/Button;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Landroid/widget/Button;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    move-object/from16 v1, v20

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$2;

    move-object/from16 v7, p1

    invoke-direct {v2, v7}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$2;-><init>(Lcom/android/systemui/biometrics/ui/CredentialView$Host;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    :goto_0
    instance-of v1, v0, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder;

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v0

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0a0649

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImeAwareEditText;

    new-instance v4, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$onBackInvokedCallback$1;

    invoke-direct {v4, v7}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$onBackInvokedCallback$1;-><init>(Lcom/android/systemui/biometrics/ui/CredentialView$Host;)V

    new-instance v10, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;

    const/4 v8, 0x0

    const/4 v3, 0x1

    move-object v0, v10

    move-object/from16 v1, p2

    move-object v5, v9

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/ImeAwareEditText;ZLandroid/window/OnBackInvokedCallback;Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v10}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/android/systemui/biometrics/ui/CredentialPatternView;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder;

    check-cast v0, Lcom/android/systemui/biometrics/ui/CredentialPatternView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0a064a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v1, v7, v3}, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/internal/widget/LockPatternView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unexpected view type: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
