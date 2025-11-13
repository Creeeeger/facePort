.class final Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->this$0:Landroidx/activity/ComponentActivity;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->this$0:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    new-instance v2, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v2, v3, v1}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->this$0:Landroidx/activity/ComponentActivity;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    invoke-direct {v2, p0, v0}, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;

    .line 52
    .line 53
    invoke-direct {v1, p0, v0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;-><init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-object v0
.end method
