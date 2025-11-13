.class public final synthetic Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/activity/ComponentActivity;

.field public final synthetic f$1:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/ComponentActivity;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;->f$1:Landroidx/activity/OnBackPressedDispatcher;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/ComponentActivity;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2$$ExternalSyntheticLambda1;->f$1:Landroidx/activity/OnBackPressedDispatcher;

    .line 4
    .line 5
    const-string v1, "this$0"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "$dispatcher"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget v1, Landroidx/activity/ComponentActivity;->$r8$clinit:I

    .line 16
    .line 17
    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;

    .line 18
    .line 19
    invoke-direct {v1, v0, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;-><init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, v0, Landroidx/activity/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
