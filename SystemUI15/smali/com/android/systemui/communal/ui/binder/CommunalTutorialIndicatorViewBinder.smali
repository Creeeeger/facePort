.class public final Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;->INSTANCE:Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/widget/TextView;Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;Z)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder$bind$disposableHandle$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder$bind$disposableHandle$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;ZLandroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    sget-object p1, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    move-result-object p0

    return-object p0
.end method
