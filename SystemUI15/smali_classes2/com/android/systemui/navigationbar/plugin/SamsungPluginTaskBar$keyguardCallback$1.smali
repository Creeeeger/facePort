.class public final Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;->this$0:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;->this$0:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->isKeyguardShowing:Z

    :cond_0
    return-void
.end method
