.class public final Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$3$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$3$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$3$3;

    invoke-direct {v0}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$3$3;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$3$3;->INSTANCE:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$3$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSImpl;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->applyBottomNavBarSizeToRecyclerViewPadding(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
