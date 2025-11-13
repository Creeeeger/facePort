.class Landroid/widget/SemExpandableListView$11;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->onJumpScrollToTopFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .line 3071
    iput-object p1, p0, Landroid/widget/SemExpandableListView$11;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 3073
    iget-object v0, p0, Landroid/widget/SemExpandableListView$11;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmOnGroupCollapseListener(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3075
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$11;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmAdapter(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3076
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3077
    iget-object v2, p0, Landroid/widget/SemExpandableListView$11;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmOnGroupCollapseListener(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupCollapseListener;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/SemExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 3076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3079
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
