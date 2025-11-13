.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mShortcutCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mShortcutCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mShortcutCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    if-nez v0, :cond_6

    const-string v0, "minimal_battery_use"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "easy_mode_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mEasyMode:Z

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mEasyMode:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mEasyMode:Z

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->onDensityOrFontScaleChanged(Z)V

    goto :goto_1

    :cond_2
    const-string v0, "lock_shortcut_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mSavingMode:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mEasyMode:Z

    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->onDensityOrFontScaleChanged(Z)V

    goto :goto_1

    :cond_5
    const-string v0, "display_cutout_hide_notch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$getMView$p$s2038760804(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLayout()V

    goto :goto_1

    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mSavingMode:Z

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mSavingMode:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->mSavingMode:Z

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->onDensityOrFontScaleChanged(Z)V

    :cond_9
    :goto_1
    return-void
.end method
