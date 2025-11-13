.class Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$3;
.super Ljava/lang/Object;
.source "PalmSwipeToCapturePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 199
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 202
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController$3;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->access$100(Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "surface_palm_swipe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
