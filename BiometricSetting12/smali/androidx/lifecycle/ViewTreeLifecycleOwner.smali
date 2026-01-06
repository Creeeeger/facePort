.class public Landroidx/lifecycle/ViewTreeLifecycleOwner;
.super Ljava/lang/Object;
.source "ViewTreeLifecycleOwner.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;
    .locals 4

    sget v0, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    sget v3, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    sget v0, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
