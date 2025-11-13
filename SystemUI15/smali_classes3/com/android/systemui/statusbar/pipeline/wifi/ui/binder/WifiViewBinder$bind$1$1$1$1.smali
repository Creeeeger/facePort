.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $dotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public final synthetic $groupView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$1$1$1$1;->$groupView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$1$1$1$1;->$dotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object p2, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewVisibilityHelper;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewVisibilityHelper$Companion;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$1$1$1$1;->$groupView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$1$1$1$1;->$dotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewVisibilityHelper$Companion;->setVisibilityState(Landroid/view/View;Landroid/view/View;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
