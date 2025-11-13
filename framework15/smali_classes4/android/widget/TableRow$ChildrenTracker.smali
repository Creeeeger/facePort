.class Landroid/widget/TableRow$ChildrenTracker;
.super Ljava/lang/Object;
.source "TableRow.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenTracker"
.end annotation


# instance fields
.field private greylist-max-o listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic blacklist this$0:Landroid/widget/TableRow;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetOnHierarchyChangeListener(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/TableRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TableRow;Landroid/widget/TableRow$ChildrenTracker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;)V

    return-void
.end method

.method private greylist-max-o setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method


# virtual methods
.method public whitelist onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TableRow;->-$$Nest$fputmColumnToChildIndex(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public whitelist onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TableRow;->-$$Nest$fputmColumnToChildIndex(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method
