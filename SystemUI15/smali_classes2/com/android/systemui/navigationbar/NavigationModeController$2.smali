.class Lcom/android/systemui/navigationbar/NavigationModeController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$2;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 3

    const-string p2, "onUserChanged: "

    const-string v0, "NavigationModeController"

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$2;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationModeController;->updateCurrentInteractionMode(Z)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;-><init>(Z)V

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p2, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUserSwitched;

    invoke-direct {p2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUserSwitched;-><init>()V

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_1
    return-void
.end method
