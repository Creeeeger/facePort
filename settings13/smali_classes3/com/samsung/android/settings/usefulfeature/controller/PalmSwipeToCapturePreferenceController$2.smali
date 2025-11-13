.class Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$2;
.super Ljava/lang/Object;
.source "PalmSwipeToCapturePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->maketurnOffUniversalPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportExclusiveTaskManagerService()Z

    move-result p1

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->access$000(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffUniversalSwitch(Landroid/content/Context;)V

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$2;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->-$$Nest$msetParmSwipeToCapture(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;Z)V

    return-void
.end method
