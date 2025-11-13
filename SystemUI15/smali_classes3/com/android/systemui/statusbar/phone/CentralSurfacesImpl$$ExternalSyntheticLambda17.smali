.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/data/model/StatusBarMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Lcom/android/systemui/statusbar/data/model/StatusBarMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda17;->f$1:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda17;->f$1:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->LIGHTS_OUT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    const/4 v2, 0x2

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->LIGHTS_OUT_TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    if-eq p0, v1, :cond_0

    iget p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowState:I

    if-ne p0, v2, :cond_1

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavBarHelperLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavBarHelper;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;I)V

    iget p0, v1, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    if-eq p0, v2, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda10;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
