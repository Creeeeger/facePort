.class public final Lcom/android/systemui/people/PeopleSpaceActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final viewModelFactory:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/people/PeopleSpaceActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->viewModelFactory:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceActivity;->viewModelFactory:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->onWidgetIdChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/people/PeopleSpaceActivity$onCreate$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/people/PeopleSpaceActivity$onCreate$1;-><init>(Lcom/android/systemui/people/PeopleSpaceActivity;Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {p1, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/android/systemui/people/PeopleSpaceActivity$onCreate$2;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/people/PeopleSpaceActivity$onCreate$2;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lcom/android/systemui/people/PeopleSpaceActivity;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x4400793a

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method
