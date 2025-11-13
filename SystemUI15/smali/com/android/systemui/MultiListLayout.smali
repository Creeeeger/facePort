.class public abstract Lcom/android/systemui/MultiListLayout;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

.field public mRotation:I

.field public mRotationListener:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    return-void
.end method


# virtual methods
.method public abstract getListView()Landroid/view/ViewGroup;
.end method

.method public abstract getSeparatedView()Landroid/view/ViewGroup;
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mRotationListener:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0;->onRotate()V

    :cond_0
    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    :cond_1
    return-void
.end method

.method public onUpdateList()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->removeAllItems()V

    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->countSeparatedItems()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public removeAllItems()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->removeAllListViews()V

    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public removeAllListViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method
