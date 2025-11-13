.class public final Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->access$300(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "surface_palm_swipe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->access$100(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "surface_palm_swipe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
