.class final Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;
.super Ljava/lang/Object;
.source "SecVibrationIntensityHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IconCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;-><init>(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmRingtoneController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 172
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmRingtoneController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;->updatePreferenceIcon(I)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmNotificationController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmNotificationController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityNotificationController;->updatePreferenceIcon(I)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmTouchController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 182
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmTouchController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityTouchVibrationController;->updatePreferenceIcon(I)V

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmMediaController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper$IconCallback;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;->-$$Nest$fgetmMediaController(Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityHelper;)Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;->updatePreferenceIcon(I)V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
