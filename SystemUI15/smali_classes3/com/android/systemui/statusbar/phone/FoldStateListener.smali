.class public final Lcom/android/systemui/statusbar/phone/FoldStateListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final foldedDeviceStates:[I

.field public final goToSleepDeviceStates:[I

.field public final listener:Lcom/android/systemui/statusbar/phone/FoldStateListener$OnFoldStateChangeListener;

.field public wasFolded:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/FoldStateListener$OnFoldStateChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->listener:Lcom/android/systemui/statusbar/phone/FoldStateListener$OnFoldStateChangeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1070103

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->foldedDeviceStates:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10700cc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->goToSleepDeviceStates:[I

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->foldedDeviceStates:[I

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->wasFolded:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->wasFolded:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->goToSleepDeviceStates:[I

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FoldStateListener;->listener:Lcom/android/systemui/statusbar/phone/FoldStateListener$OnFoldStateChangeListener;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CentralSurfaces#onFoldedStateChanged"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsFolded:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecLightRevealScrimHelper:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->isFolded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->isShadeFullyOpen()Z

    move-result v1

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->isExpandingOrCollapsing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-eqz p1, :cond_3

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCloseQsBeforeScreenOff:Z

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
