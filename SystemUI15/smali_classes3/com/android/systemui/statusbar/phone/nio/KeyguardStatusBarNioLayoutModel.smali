.class public final Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public containerEndX:I

.field public containerStartX:I

.field public final context:Landroid/content/Context;

.field public iconScaleRatio:F

.field public iconSize:I

.field public isNotificationIconsOnlyOn:Z

.field public isRtl:Z

.field public isShowNotificationOnKeyguard:Z

.field public isUpdatedModel:Z

.field public keyguardStatusBarViewAlpha:F

.field public keyguardStatusBarViewVisibility:I

.field public numberOfNio:I

.field public paddingLeft:I

.field public paddingRight:I

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public topMargin:I

.field public totalHeight:I

.field public updateRing:Ljava/lang/Runnable;

.field public visibleCallChip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isRtl:Z

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isShowNotificationOnKeyguard:Z

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isNotificationIconsOnlyOn:Z

    return-void
.end method


# virtual methods
.method public final getEndMargin()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isNotificationIconsOnlyOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isShowNotificationOnKeyguard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->visibleCallChip:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->numberOfNio:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07049a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateValues(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateRing:Ljava/lang/Runnable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
