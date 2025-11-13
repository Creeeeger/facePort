.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $flowWidget:Landroidx/constraintlayout/helper/widget/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/helper/widget/Flow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$4$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$4$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    iget-object p2, p0, Landroidx/constraintlayout/helper/widget/Flow;->mFlow:Landroidx/constraintlayout/core/widgets/Flow;

    iput p1, p2, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
