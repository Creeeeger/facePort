.class public final synthetic Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field public final synthetic f$1:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f0a0068

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    const-string v4, "ManageApplications"

    if-lt p1, v1, :cond_0

    const-string p0, "new height MATCH_PARENT"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p0, p1

    sub-int p0, v3, p0

    const-string p1, "new height : "

    invoke-static {p0, p1, v4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, p0, :cond_1

    iput p0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p0, Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda1;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
