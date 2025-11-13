.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final statusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

.field public final wifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;->wifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;->statusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    return-void
.end method


# virtual methods
.method public final bindGroup(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;->wifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;->statusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    const-string v3, "invalid location for WifiViewModel: "

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/SubScreenQsWifiViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/SubScreenQsWifiViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/QsWifiViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/QsWifiViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/KeyguardWifiViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/KeyguardWifiViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/HomeWifiViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/HomeWifiViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)V

    :goto_0
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter$bindGroup$1;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter$bindGroup$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
