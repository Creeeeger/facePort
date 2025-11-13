.class Landroid/widget/AbsListView$11;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->semSetFastScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;

.field final synthetic blacklist val$enabled:Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 9804
    iput-object p1, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iput-boolean p2, p0, Landroid/widget/AbsListView$11;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 9807
    iget-object v0, p0, Landroid/widget/AbsListView$11;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, p0, Landroid/widget/AbsListView$11;->val$enabled:Z

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-$$Nest$msemSetFastScrollEnabledUiThread(Landroid/widget/AbsListView;Z)V

    .line 9808
    return-void
.end method
