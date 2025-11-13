.class public final synthetic Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/GestureNavigationSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    iget-object v0, p1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    iget-object v1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    const-string v2, "gesture_left_back_sensitivity"

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/settings/gestures/BackGestureIndicatorView;->mLeftDrawable:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settings/gestures/BackGestureIndicatorView;->mRightDrawable:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    :goto_0
    iget-object v0, v0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mHandler:Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mBackGestureInsetScales:[F

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p2, v0, p2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const/4 p0, 0x1

    return p0
.end method
