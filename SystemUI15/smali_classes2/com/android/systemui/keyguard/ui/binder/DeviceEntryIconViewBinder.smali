.class public final Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind-9Oi015Q(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryBackgroundViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/VibratorHelper;Landroidx/compose/ui/graphics/Color;)V
    .locals 12

    move-object v8, p1

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v2, v8, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->longPressHandlingView:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iget-object v9, v8, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->iconView:Landroid/widget/ImageView;

    iget-object v10, v8, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->bgView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$1;

    move-object v5, p0

    move-object v1, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v0, v3, v4, p0, p2}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$1;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;)V

    iput-object v0, v2, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->listener:Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$1;

    new-instance v11, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p2

    move-object v3, p1

    move-object/from16 v4, p6

    move-object v5, p0

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/common/ui/view/LongPressHandlingView;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlinx/coroutines/CoroutineScope;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v11}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    new-instance v6, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v9

    move-object v2, p3

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$3;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Landroidx/compose/ui/graphics/Color;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v6}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$4;

    const/4 v1, 0x0

    move-object/from16 v2, p4

    invoke-direct {v0, v2, v10, v1}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$4;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryBackgroundViewModel;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    invoke-static {v10, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
