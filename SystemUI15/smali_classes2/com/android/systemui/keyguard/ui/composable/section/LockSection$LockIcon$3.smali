.class final Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $overrideColor:Landroidx/compose/ui/graphics/Color;

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/composable/section/LockSection;Landroidx/compose/ui/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$3;->this$0:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$3;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    new-instance p1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$3;->this$0:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;

    iget-object v9, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$3;->$overrideColor:Landroidx/compose/ui/graphics/Color;

    const p0, 0x7f0a0371

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, v0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->deviceEntryIconViewModel:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;

    iget-object p0, v0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->deviceEntryForegroundViewModel:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;

    iget-object p0, v0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->deviceEntryBackgroundViewModel:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryBackgroundViewModel;

    iget-object p0, v0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->falsingManager:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    iget-object p0, v0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->vibratorHelper:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/statusbar/VibratorHelper;

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder;->bind-9Oi015Q(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryIconViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryBackgroundViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/VibratorHelper;Landroidx/compose/ui/graphics/Color;)V

    return-object p1
.end method
