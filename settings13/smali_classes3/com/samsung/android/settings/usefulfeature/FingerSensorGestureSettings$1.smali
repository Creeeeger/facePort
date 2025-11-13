.class Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;
.super Landroid/database/ContentObserver;
.source "FingerSensorGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/os/Handler;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "fingerprint_gesture_quick"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-$$Nest$fgetmNotificationPanel(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
