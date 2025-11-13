.class public final Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public adaptivePosition:I

.field public final comparator:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;

.field public final context:Landroid/content/Context;

.field public darkIntensity:F

.field public leftContainer:Landroid/widget/LinearLayout;

.field public final leftViewList:Ljava/util/PriorityQueue;

.field public navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public rightContainer:Landroid/widget/LinearLayout;

.field public final rightViewList:Ljava/util/PriorityQueue;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public showInGestureMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    sget-object p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;

    new-instance p2, Ljava/util/PriorityQueue;

    invoke-direct {p2, p1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, p1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->clear()V

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method


# virtual methods
.method public final applyTint(Landroid/view/View;)V
    .locals 5

    instance-of v0, p1, Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    const v2, 0x7f0604c9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    const v3, 0x7f0604c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    iget v4, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->darkIntensity:F

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v0, v2}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->darkIntensity:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public final getRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    :goto_0
    return-object p0
.end method

.method public final isExist(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    :cond_7
    :goto_1
    return v0
.end method

.method public final isSetMultimodalButton()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    const-string v1, "honeyboard"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {p0, v1, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_3
    move p0, v3

    :goto_2
    if-eqz p0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    return v3
.end method

.method public final removeRemoteView(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const-string v2, "honeyboard"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-ne v2, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    goto :goto_1

    :cond_4
    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v1, v0

    :cond_6
    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-ne p1, v0, :cond_a

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, v0

    :cond_9
    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    return-void
.end method

.method public final setRemoteView(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;I)V
    .locals 6

    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    invoke-direct {v3, v4, v2, v0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p1

    iget-object v0, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->removeRemoteView(ILjava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-string v4, "honeyboard"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-ne v0, v2, :cond_5

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    if-eqz v0, :cond_4

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    move-result p2

    if-nez p2, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isSideAndBottomGestureMode$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v5

    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    iput v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    :cond_5
    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object p1, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyTint(Landroid/view/View;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->removeRemoteView(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final setRemoteViewPadding(Landroid/view/View;III)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    const/4 p4, 0x0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x3

    if-ne p2, p0, :cond_4

    :cond_2
    invoke-virtual {p1, p3, p4, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1, p4, p3, p4, p3}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final updateRemoteViewContainer(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v0

    if-eqz p2, :cond_10

    if-nez p3, :cond_1

    goto/16 :goto_6

    :cond_1
    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-ne p1, v1, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object v2

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p0, p3}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p2

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p2

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    if-eqz v4, :cond_5

    if-ne p4, v1, :cond_5

    const v4, 0x7f070ee7

    goto :goto_4

    :cond_5
    const v4, 0x7f070ee6

    :goto_4
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, 0x4

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    iget-object v5, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {p0, v5, p1, v3, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setRemoteViewPadding(Landroid/view/View;III)V

    iget-object v5, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_7

    iget-object v7, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    invoke-virtual {v5, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v2, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    if-eqz p2, :cond_d

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    iget-object v0, p2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v3, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setRemoteViewPadding(Landroid/view/View;III)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    iget-object p4, p2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_10
    :goto_6
    return-void
.end method
