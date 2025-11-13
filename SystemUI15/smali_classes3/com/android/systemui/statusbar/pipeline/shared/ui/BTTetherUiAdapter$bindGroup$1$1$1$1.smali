.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter$bindGroup$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter$bindGroup$1$1$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter$bindGroup$1$1$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->btTether:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;->isDefault:Z

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    const v0, 0x1040ec6

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
