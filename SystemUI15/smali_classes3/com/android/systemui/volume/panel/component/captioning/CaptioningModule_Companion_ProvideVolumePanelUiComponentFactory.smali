.class public final Lcom/android/systemui/volume/panel/component/captioning/CaptioningModule_Companion_ProvideVolumePanelUiComponentFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final viewModelProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/captioning/CaptioningModule_Companion_ProvideVolumePanelUiComponentFactory;->viewModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideVolumePanelUiComponent(Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;)Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/panel/component/captioning/CaptioningModule;->Companion:Lcom/android/systemui/volume/panel/component/captioning/CaptioningModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;->buttonViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/volume/panel/component/captioning/CaptioningModule$Companion$provideVolumePanelUiComponent$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/panel/component/captioning/CaptioningModule$Companion$provideVolumePanelUiComponent$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/captioning/CaptioningModule_Companion_ProvideVolumePanelUiComponentFactory;->viewModelProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;

    invoke-static {p0}, Lcom/android/systemui/volume/panel/component/captioning/CaptioningModule_Companion_ProvideVolumePanelUiComponentFactory;->provideVolumePanelUiComponent(Lcom/android/systemui/volume/panel/component/captioning/ui/viewmodel/CaptioningViewModel;)Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;

    move-result-object p0

    return-object p0
.end method
