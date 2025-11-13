.class Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->seslSetRefreshOnce(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1512
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAnimationEnd()V
    .locals 1

    .line 1515
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1516
    invoke-static {}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnAnimationEnd"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
