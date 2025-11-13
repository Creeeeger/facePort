.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f0a0a21

    const/16 v1, 0x1d3e

    const/16 v2, 0x1d2e

    const-string/jumbo v3, "navigation_bar_gesture_while_hidden"

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    const-string p1, "com.android.internal.systemui.navbar.threebutton"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    invoke-static {v2, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0a06c8

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "any_screen_enabled"

    invoke-static {p1, p2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "one_handed_op_wakeup_type"

    invoke-static {p1, p2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    iget-boolean p2, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->showOneHandModeDisablePopup()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSimplifiedGesture()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportLegacyFeatures(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "navigation_bar_gesture_detail_type"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "navigation_bar_gesture_hint"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    const-wide/16 p0, 0x1

    invoke-static {v2, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_4
    :goto_0
    return-void
.end method
