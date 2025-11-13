.class Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;
.super Ljava/lang/Object;
.source "NavigationBarGesturePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmNavBarOverlayInteractor(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fputmNavBarOverlayInteractor(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;)V

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 70
    sget v0, Lcom/android/settings/R$id;->navigation_bar_btn:I

    const/16 v1, 0x1d3e

    const/16 v2, 0x1d2e

    const-string v3, "navigation_bar_gesture_while_hidden"

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_3

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmNavBarOverlayInteractor(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    move-result-object p0

    const-string p1, "com.android.internal.systemui.navbar.threebutton"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    .line 75
    invoke-static {v2, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    .line 78
    :cond_1
    sget v0, Lcom/android/settings/R$id;->gesture_btn:I

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 80
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

    .line 81
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "one_handed_op_wakeup_type"

    invoke-static {p1, p2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmTouchStatus(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->showOneHandModeDisablePopup()V

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmNavBarOverlayInteractor(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    const-wide/16 p0, 0x1

    .line 88
    invoke-static {v2, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    :goto_0
    return-void
.end method
