.class public final Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$onViewCreated$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;


# direct methods
.method public constructor <init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$onViewCreated$1$1$1;->this$0:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    iget-object p0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$onViewCreated$1$1$1;->this$0:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;

    iget-object p2, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->progressBar$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    iget-object p2, p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->enrollmentUiState:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->navController$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavController;

    const v2, 0x7f0a0080

    invoke-virtual {p2, v2}, Landroidx/navigation/NavController;->navigate(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->progressBar$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->adapter:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingRecyclerViewAdapter;

    iget-object v3, p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->discoveredDeviceUiStates:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p2, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingRecyclerViewAdapter;->uiStates:Ljava/util/List;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;->getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    iget-object v3, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v3}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;

    sget-object v4, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v4, v4, v1

    iget-object v5, v3, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->selectedDevice$delegate:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel$special$$inlined$observable$1;

    invoke-virtual {v5, v3, v4}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p2, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    :goto_1
    iget-object p1, p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->errorMsg:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->errorText$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->errorText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->errorText$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->errorText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
