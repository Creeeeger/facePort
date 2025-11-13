.class public final Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;

    invoke-direct {v0}, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;-><init>()V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
