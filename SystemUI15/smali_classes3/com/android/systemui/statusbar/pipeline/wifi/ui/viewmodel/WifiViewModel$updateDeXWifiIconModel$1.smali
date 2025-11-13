.class final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $desktopManager:Lcom/android/systemui/util/DesktopManager;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->$desktopManager:Lcom/android/systemui/util/DesktopManager;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;

    check-cast p2, Lcom/android/systemui/common/shared/model/Icon$Resource;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->$desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;-><init>(Lcom/android/systemui/util/DesktopManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;

    instance-of v2, p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget p1, p1, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    :cond_1
    invoke-direct {v1, v2, p1, v3}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;-><init>(ZII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$updateDeXWifiIconModel$1;->$desktopManager:Lcom/android/systemui/util/DesktopManager;

    iget-boolean p1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->isVisible:Z

    iget v0, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->wifiId:I

    iget v2, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->activityId:I

    invoke-interface {p0, p1, v0, v2}, Lcom/android/systemui/util/DesktopManager;->setWifiIcon(ZII)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
