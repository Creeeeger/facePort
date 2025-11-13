.class public final Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final selectedDevice$delegate:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel$special$$inlined$observable$1;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getSelectedDevice()Ljava/lang/Object;"

    const/4 v2, 0x0

    const-class v3, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;

    const-string v4, "selectedDevice"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v2, Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;->NONE:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;-><init>(Ljava/util/List;Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel$special$$inlined$observable$1;

    invoke-direct {v0, p0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel$special$$inlined$observable$1;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;)V

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->selectedDevice$delegate:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel$special$$inlined$observable$1;

    return-void
.end method


# virtual methods
.method public final discoverDevices()V
    .locals 6

    :cond_0
    iget-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    sget-object v3, Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;->FINDING_DEVICES:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->copy$default(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;Ljava/util/List;Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;I)Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    sget-object v3, Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;->NONE:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    const/4 v4, 0x4

    invoke-static {v2, v1, v3, v4}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->copy$default(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;Ljava/util/List;Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;I)Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void
.end method
