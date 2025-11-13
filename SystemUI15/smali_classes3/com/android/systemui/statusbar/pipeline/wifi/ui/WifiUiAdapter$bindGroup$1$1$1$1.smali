.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter$bindGroup$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter$bindGroup$1$1$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;

    instance-of p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter$bindGroup$1$1$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    const p2, 0x1040ef0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->Companion:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x4

    iput v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->type:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
