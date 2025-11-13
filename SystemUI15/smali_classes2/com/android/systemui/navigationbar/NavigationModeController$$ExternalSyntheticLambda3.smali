.class public final synthetic Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "NavigationModeController"

    const-string/jumbo v3, "setModeOverlay: overlayPackage="

    :try_start_0
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    if-eqz v4, :cond_0

    const-string v4, "com.android.internal.systemui.navbar.threebutton"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->getGestureOverlayPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v1, p0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to enable overlay "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "caused by: "

    invoke-static {v4, v3, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_FAILED_BY_EXCEPTION:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->makeOverlayHistory(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
