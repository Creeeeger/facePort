.class final Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;
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
    iput-object p1, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->this$0:Landroidx/activity/ComponentActivity;

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
    .locals 3

    .line 1
    new-instance v0, Landroidx/activity/FullyDrawnReporter;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2;->this$0:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->reportFullyDrawnExecutor:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    .line 6
    .line 7
    new-instance v2, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroidx/activity/FullyDrawnReporter;-><init>(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
