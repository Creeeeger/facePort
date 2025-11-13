.class Landroidx/core/widget/NestedScrollView$5;
.super Ljava/lang/Object;
.source "NestedScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/NestedScrollView;


# direct methods
.method constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 3131
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView$5;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3134
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$5;->this$0:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/widget/NestedScrollView;->access$400(Landroidx/core/widget/NestedScrollView;I)V

    return-void
.end method
