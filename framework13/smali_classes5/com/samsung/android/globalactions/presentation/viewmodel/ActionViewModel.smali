.class public interface abstract Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
.super Ljava/lang/Object;
.source "ActionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_LONG_PRESS_TIME:I = 0x1f4


# virtual methods
.method public blacklist dismissTipPopup()V
    .locals 0

    .line 69
    return-void
.end method

.method public abstract blacklist getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
.end method

.method public blacklist getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLongPressTime()I
    .locals 1

    .line 27
    const/16 v0, 0x1f4

    return v0
.end method

.method public blacklist getState()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .locals 1

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAvailableShow()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onLongPress()V
    .locals 0

    .line 53
    return-void
.end method

.method public abstract blacklist onPress()V
.end method

.method public blacklist onPressSecureConfirm()V
    .locals 0

    .line 59
    return-void
.end method

.method public abstract blacklist setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    return-void
.end method

.method public blacklist setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public blacklist setIntentAction(I)V
    .locals 0
    .param p1, "intentAction"    # I

    .line 39
    return-void
.end method

.method public blacklist setState(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    .line 21
    return-void
.end method

.method public blacklist setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 33
    return-void
.end method

.method public blacklist showBeforeProvisioning()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showTipPopup(Landroid/view/View;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/View;

    .line 66
    return-void
.end method

.method public blacklist updateState()V
    .locals 0

    .line 62
    return-void
.end method
