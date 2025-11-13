.class public final Lcom/android/systemui/navigationbar/NavigationBar$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$9;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$9;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1800(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnKeyguardStateChanged;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-direct {v1, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnKeyguardStateChanged;-><init>(Z)V

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    return-void
.end method
