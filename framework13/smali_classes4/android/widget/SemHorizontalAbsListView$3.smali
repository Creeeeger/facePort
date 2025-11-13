.class Landroid/widget/SemHorizontalAbsListView$3;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView;->postOnJumpScrollToFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 6398
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 6400
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->onJumpScrollToTopFinished()V

    .line 6401
    return-void
.end method
