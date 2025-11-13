.class public final Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;
.super Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mButtonData:Ljava/util/List;

.field public mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    iput-object p0, p1, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;-><init>(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getVisibleContextButton()Lcom/android/systemui/navigationbar/buttons/ContextualButton;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setButtonVisibility(IZ)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    iget v2, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mId:I

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_3

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    const-string p2, " in context group"

    const-string v0, "Cannot find the button id of "

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextualButtonGroup"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1, v0, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    iput-boolean p2, v2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    iget-object p2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    move v3, v0

    :goto_2
    if-ltz p2, :cond_7

    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    if-nez v3, :cond_4

    iget-boolean v5, v4, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    if-eqz v5, :cond_4

    iget-object v3, v4, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    move v3, v2

    goto :goto_4

    :cond_4
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    iget-object v6, v5, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    if-ne v6, v7, :cond_6

    iget-boolean v4, v4, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, p1

    :goto_3
    invoke-virtual {v5, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v4, v4, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    invoke-virtual {v4, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    :goto_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_7
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz p1, :cond_8

    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnInvalidateRemoteViews;

    invoke-direct {p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnInvalidateRemoteViews;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    return-void
.end method
