.class public abstract Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;


# instance fields
.field public mDefaultSideSetting:I

.field public mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public mView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleDoubleTap(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isLeftAligned()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isTouchOnTheOtherSideOfSecurity(Landroid/view/MotionEvent;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    xor-int/lit8 p1, v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v2, "one_handed_keyguard_side"

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->putInt(Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    const/16 v1, 0x3f

    invoke-static {v1, v0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->updateSecurityViewLocation(ZZ)V

    :cond_1
    return-void
.end method

.method public final isLeftAligned()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v1, "one_handed_keyguard_side"

    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mDefaultSideSetting:I

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTouchOnTheOtherSideOfSecurity(Landroid/view/MotionEvent;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->mView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract updateSecurityViewLocation(ZZ)V
.end method
