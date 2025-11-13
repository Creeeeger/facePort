.class public interface abstract Lcom/android/systemui/navigationbar/store/NavBarStateManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static canShowHideKeyboardButtonForRotation$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowHideKeyboardButtonForRotation(I)Z

    move-result p0

    return p0
.end method

.method public static isSideAndBottomGestureMode$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z
    .locals 1

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic isTaskBarEnabled$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z
    .locals 1

    const/4 v0, 0x0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result p0

    return p0
.end method
