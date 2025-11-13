.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $view:Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1$1$1;->$view:Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object p2, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewVisibilityHelper;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewVisibilityHelper$Companion;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$1$1$1$1$1;->$view:Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;->dotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p0, :cond_1

    move-object v1, p0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewVisibilityHelper$Companion;->setVisibilityState(Landroid/view/View;Landroid/view/View;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
