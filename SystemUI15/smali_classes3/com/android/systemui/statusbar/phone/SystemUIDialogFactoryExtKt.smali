.class public abstract Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$bottomSheetClickable(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 3

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x32dcccc6

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0xf730ebf

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, p3, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v1, :cond_2

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    move p3, v2

    :goto_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_3

    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p3, :cond_4

    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$bottomSheetClickable$1$1;

    const/4 p3, 0x0

    invoke-direct {v0, p1, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$bottomSheetClickable$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public static final create(Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/DialogDelegate;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    new-instance v9, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->sysUiState:Lcom/android/systemui/model/SysUiState;

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;-><init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/DialogDelegate;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog;->create()V

    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object v10, v0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$create$2$1;

    move-object/from16 v2, p5

    invoke-direct {v1, v2, v9}, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$create$2$1;-><init>(Lkotlin/jvm/functions/Function3;Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x6ee71e1d

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/compose/ui/platform/ComposeView;->setContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->setContentView(Landroid/view/View;)V

    return-object v9
.end method

.method public static create$default(Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Landroid/content/Context;ILjava/lang/Integer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;
    .locals 6

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->applicationContext:Landroid/content/Context;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    sget p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->$r8$clinit:I

    const p2, 0x7f140603

    :cond_1
    move v2, p2

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$create$1;

    invoke-direct {v4, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$create$1;-><init>(Ljava/lang/Integer;)V

    const/4 v3, 0x1

    move-object v0, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/DialogDelegate;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createBottomSheet$default(Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;->applicationContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/statusbar/phone/EdgeToEdgeDialogDelegate;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/EdgeToEdgeDialogDelegate;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$createBottomSheet$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$createBottomSheet$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p1, 0x56ea4910

    const/4 v2, 0x1

    invoke-direct {v5, p1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const v2, 0x7f140601

    const/4 v3, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/DialogDelegate;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;

    move-result-object p0

    return-object p0
.end method
