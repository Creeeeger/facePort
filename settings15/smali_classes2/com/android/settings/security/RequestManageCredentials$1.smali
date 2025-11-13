.class public final Lcom/android/settings/security/RequestManageCredentials$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/security/RequestManageCredentials;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/RequestManageCredentials;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/security/RequestManageCredentials$1;->this$0:Lcom/android/settings/security/RequestManageCredentials;

    iget-boolean p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mDisplayingButtonPanel:Z

    if-nez p1, :cond_4

    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mExtendedFab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mExtendedFab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    sub-int/2addr p3, p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, p2

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mExtendedFab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/settings/security/RequestManageCredentials;->mButtonPanel:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mExtendedFab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    invoke-virtual {p0}, Lcom/android/settings/security/RequestManageCredentials;->showButtonPanel()V

    :cond_4
    :goto_2
    return-void
.end method
