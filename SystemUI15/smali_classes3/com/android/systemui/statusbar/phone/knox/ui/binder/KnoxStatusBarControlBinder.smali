.class public final Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;->getStatusBarView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1;-><init>(Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
