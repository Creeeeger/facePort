.class public final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTetherableInterfaceRegexpsChanged(Landroid/net/TetheringManager$TetheringInterfaceRegexps;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->getTetherableWifiRegexs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mHasTetherableWifiRegexs:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    const-string v1, "HotspotController"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-$$Nest$mfireHotspotAvailabilityChanged(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    :cond_1
    return-void
.end method

.method public final onTetheringSupported(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mIsTetheringSupported:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    const-string v1, "HotspotController"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-$$Nest$mfireHotspotAvailabilityChanged(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    :cond_0
    return-void
.end method
