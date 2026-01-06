.class public Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "RecyclerViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "RVRequireScrollMixin"


# instance fields
.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->canScrollDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)Lcom/android/setupwizardlib/template/RequireScrollMixin;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    return-object v0
.end method

.method private canScrollDown()Z
    .locals 4

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    iget-object v2, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    iget-object v3, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method public pageScrollDown()V
    .locals 3

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;-><init>(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "RVRequireScrollMixin"

    const-string v1, "Cannot require scroll. Recycler view is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
