.class final Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView$Companion$constructAndBind$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $it:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

.field final synthetic $wifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView$Companion$constructAndBind$1$1;->$it:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView$Companion$constructAndBind$1$1;->$wifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView$Companion$constructAndBind$1$1;->$it:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView$Companion$constructAndBind$1$1;->$wifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$3;

    move-result-object p0

    return-object p0
.end method
