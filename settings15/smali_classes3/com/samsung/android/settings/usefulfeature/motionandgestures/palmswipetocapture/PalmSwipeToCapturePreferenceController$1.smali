.class public final Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK"

    iget p2, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    sget-boolean p2, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->access$200(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityManager;->semSetScreenReaderEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->-$$Nest$msetParmSwipeToCapture(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->-$$Nest$mdismissAllDialog(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)V

    return-void

    :pswitch_1
    sget-boolean p2, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->mAccessibilityEnabled:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->access$000(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffUniversalSwitch(Landroid/content/Context;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->-$$Nest$msetParmSwipeToCapture(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;->-$$Nest$mdismissAllDialog(Lcom/samsung/android/settings/usefulfeature/motionandgestures/palmswipetocapture/PalmSwipeToCapturePreferenceController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
