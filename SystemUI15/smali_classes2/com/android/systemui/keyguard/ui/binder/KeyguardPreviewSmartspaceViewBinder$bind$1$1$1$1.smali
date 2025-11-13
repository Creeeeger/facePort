.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $previewContext:Landroid/content/Context;

.field public final synthetic $smartspace:Landroid/view/View;

.field public final synthetic $splitShadePreview:Z

.field public final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;ZLandroid/content/Context;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$splitShadePreview:Z

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$previewContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$smartspace:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/ClockSizeSetting;

    sget-object p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$splitShadePreview:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$previewContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;->getSmallClockTopPadding(Landroid/content/Context;Z)I

    move-result p2

    const v0, 0x7f071418

    invoke-static {p1, v0, p2}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$previewContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;->getSmallClockTopPadding(Landroid/content/Context;Z)I

    move-result p1

    :goto_0
    sget-object p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;->$smartspace:Landroid/view/View;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
