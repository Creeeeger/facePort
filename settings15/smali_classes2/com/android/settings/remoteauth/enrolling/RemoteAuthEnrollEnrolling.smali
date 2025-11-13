.class public final Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;
.super Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;",
        "Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final adapter:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingRecyclerViewAdapter;

.field public final errorText$delegate:Lkotlin/Lazy;

.field public final navController$delegate:Lkotlin/Lazy;

.field public final progressBar$delegate:Lkotlin/Lazy;

.field public final recyclerView$delegate:Lkotlin/Lazy;

.field public final viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d05c8

    invoke-direct {p0, v0}, Lcom/android/settings/remoteauth/RemoteAuthEnrollBase;-><init>(I)V

    new-instance v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$2;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$1;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$4;

    invoke-direct {v3, v0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$4;-><init>(Lkotlin/Lazy;)V

    new-instance v4, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$navController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$navController$2;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->navController$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingRecyclerViewAdapter;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v1, v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingRecyclerViewAdapter;->uiStates:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->adapter:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingRecyclerViewAdapter;

    new-instance v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$progressBar$2;

    invoke-direct {v0, p0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$progressBar$2;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->progressBar$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$errorText$2;

    invoke-direct {v0, p0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$errorText$2;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->errorText$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$recyclerView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$recyclerView$2;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->recyclerView$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final initializePrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f142a2f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$initializePrimaryFooterButton$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$initializePrimaryFooterButton$1;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;I)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v2, 0x5

    const v3, 0x7f15045d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    return-object p0
.end method

.method public final initializeSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f142a30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$initializePrimaryFooterButton$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$initializePrimaryFooterButton$1;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;I)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v2, 0x7

    const v3, 0x7f15045e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    return-object p0
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object p0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;

    invoke-virtual {p0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingViewModel;->discoverDevices()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->recyclerView$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->recyclerView$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;->adapter:Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance p2, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$onViewCreated$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling$onViewCreated$1;-><init>(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrolling;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
