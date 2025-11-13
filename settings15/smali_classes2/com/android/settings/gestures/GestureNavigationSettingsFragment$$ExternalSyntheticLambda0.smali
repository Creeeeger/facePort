.class public final synthetic Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/GestureNavigationSettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/gestures/GestureNavigationSettingsFragment;

    iget v0, p1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mDefaultBackGestureInset:F

    iget-object v1, p1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mBackGestureInsetScales:[F

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p2, v1, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    iget-object p1, p1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    const-string v0, "gesture_left_back_sensitivity"

    iget-object p0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/android/settings/gestures/BackGestureIndicatorView;->mLeftDrawable:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/settings/gestures/BackGestureIndicatorView;->mRightDrawable:Lcom/android/settings/gestures/BackGestureIndicatorDrawable;

    :goto_0
    const/4 p1, 0x1

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mHandler:Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mHandler:Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return p1
.end method
