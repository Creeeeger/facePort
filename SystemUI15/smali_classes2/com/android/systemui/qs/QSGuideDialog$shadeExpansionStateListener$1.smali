.class public final Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSGuideDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 4

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/QSGuideDialog$shadeExpansionStateListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    if-nez v0, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->firstExpanded:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_GUIDE:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->commandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->needNotToShowQSGuideDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->statusBarState:I

    if-eqz p1, :cond_0

    move v1, v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNotShade : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "QSGuideDialog"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    xor-int/2addr p1, v0

    const-string v1, "isNotSplit : "

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->lazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result p1

    const-string v1, "ScreenOffAnimationPlaying : "

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    const-string v1, "isOccluded : "

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->alreadyDialogShown:Z

    const-string v1, "isAlreadyShown : "

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSGuideDialog;->firstExpanded:Z

    goto :goto_1

    :cond_3
    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSGuideDialog;->dismiss()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_5

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->firstExpanded:Z

    :cond_5
    :goto_1
    return-void
.end method
