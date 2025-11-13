.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $iconTint:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final synthetic $networkTypeContainer:Landroid/widget/FrameLayout;

.field public final synthetic $networkTypeView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;->$networkTypeContainer:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;->$iconTint:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;->$networkTypeView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;->$networkTypeContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/Integer;

    iget p1, p1, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;->$iconTint:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;->$networkTypeContainer:Landroid/widget/FrameLayout;

    check-cast p1, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/Colors;

    iget v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/Colors;->tint:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;->$networkTypeView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/Colors;

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/Colors;->contrast:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1$2$1$5$1;->$networkTypeView:Landroid/widget/ImageView;

    check-cast p1, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/Colors;

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/Colors;->tint:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
