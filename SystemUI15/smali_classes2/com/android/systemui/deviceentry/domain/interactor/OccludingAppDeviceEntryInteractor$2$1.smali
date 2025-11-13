.class public final Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final synthetic this$0:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2$1;->$activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/Unit;

    new-instance p1, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2$1$1;

    iget-object p2, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2$1;->this$0:Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;

    invoke-direct {p1, p2}, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2$1$1;-><init>(Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor;)V

    iget-object p0, p0, Lcom/android/systemui/deviceentry/domain/interactor/OccludingAppDeviceEntryInteractor$2$1;->$activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
