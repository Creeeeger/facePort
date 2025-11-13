.class public interface abstract Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$Companion;->$r8$clinit:I

    return-void
.end method


# virtual methods
.method public addListener()V
    .locals 0

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getLockScreenState()Lkotlinx/coroutines/flow/Flow;
.end method

.method public getPanelIconTransitionDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPickerIconResourceId()I
.end method

.method public getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Default;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Default;-><init>(Landroid/content/Intent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isIconPaddingRequired()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTaskEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockWaitRequired()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
.end method

.method public abstract pickerName()Ljava/lang/String;
.end method

.method public removeListener()V
    .locals 0

    return-void
.end method

.method public setSpecName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
