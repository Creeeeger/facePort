.class public final Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;


# instance fields
.field public final mButtonDispatchers:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final addButton(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getButtonView(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final setButtonImage(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setButtonOnLongClickListener(ILandroid/view/View$OnLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public final setButtonVisibility(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    :goto_0
    return-void
.end method
