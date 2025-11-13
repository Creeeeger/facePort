.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public IsNavigationBarGestureHintEnabled:Z

.field public IsNavigationBarGestureProtectionEnabled:Z

.field public IsNavigationBarHideKeyboardButtonEnabled:Z

.field public final SETTINGS_VALUE_LIST:[Landroid/net/Uri;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/net/Uri;

    const-string v0, "game_double_swipe_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "navigation_bar_gesture_hint"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->SETTINGS_VALUE_LIST:[Landroid/net/Uri;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final getDumpText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavSettingsHelper("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navGestureProtectionEnabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", navGestureHintEnabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", navHideKeyboardButtonEnabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarHideKeyboardButtonEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->SETTINGS_VALUE_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateNavBarHeight(I)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    return-void
.end method

.method public final updateSettingsAndCheckChanges()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarHideKeyboardButtonEnabled:Z

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureProtectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarHideKeyboardButtonEnabled:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureProtectionEnabled:Z

    if-ne v5, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->IsNavigationBarGestureHintEnabled:Z

    if-ne p0, v3, :cond_1

    if-eq v0, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
