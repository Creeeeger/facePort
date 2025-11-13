.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$31;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/dagger/SavedStateHandleAssisted;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$31;->this$0:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$31;->create(Landroidx/lifecycle/SavedStateHandle;)Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

    move-result-object p0

    return-object p0
.end method

.method public final create(Landroidx/lifecycle/SavedStateHandle;)Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$31;->this$0:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->smartThingsMediaSdkManager()Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;-><init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0
.end method
