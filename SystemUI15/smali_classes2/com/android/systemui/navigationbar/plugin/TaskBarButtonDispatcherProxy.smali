.class public final Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;


# instance fields
.field public final context:Landroid/content/Context;

.field public final extraKeyIDList:Ljava/util/List;

.field public final pinButton:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;

.field public final pinID:I

.field public final pluginBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pluginBundle:Landroid/os/Bundle;

    new-instance p1, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;-><init>(Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;ILandroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pinButton:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;

    const p1, 0x7f0a07bb

    iput p1, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pinID:I

    const p1, 0x7f0a07b6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0a07b7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const v0, 0x7f0a07b8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0a07b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a07ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->extraKeyIDList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addButton(I)V
    .locals 0

    return-void
.end method

.method public final getButtonView(I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setButtonImage(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    invoke-static {p2}, Lcom/android/systemui/navigationbar/util/IconDrawableUtil;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p3}, Lcom/android/systemui/navigationbar/util/IconDrawableUtil;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pinID:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pinButton:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;

    iput p1, v0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;->id:I

    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pluginBundle:Landroid/os/Bundle;

    const-string v0, "pin_LIGHT"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pluginBundle:Landroid/os/Bundle;

    const-string p1, "pin_DARK"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->extraKeyIDList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    const-string v2, "extra"

    invoke-static {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pluginBundle:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_LIGHT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pluginBundle:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_DARK"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pinButton:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;->id:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;->view:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setButtonOnLongClickListener(ILandroid/view/View$OnLongClickListener;)V
    .locals 0

    return-void
.end method

.method public final setButtonVisibility(II)V
    .locals 0

    return-void
.end method
