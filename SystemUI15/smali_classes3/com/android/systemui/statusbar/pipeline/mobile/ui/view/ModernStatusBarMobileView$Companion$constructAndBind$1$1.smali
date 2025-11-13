.class final Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;
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
.field final synthetic $configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field final synthetic $it:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

.field final synthetic $logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

.field final synthetic $viewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;->$it:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;->$viewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;->$logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;->$configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;->$it:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;->$viewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;->$logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$constructAndBind$1$1;->$configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder;->bind$default(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$3;

    move-result-object p0

    return-object p0
.end method
