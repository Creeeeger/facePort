.class Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$1;
.super Ljava/lang/Object;
.source "VirtualVibrationSoundPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->setChecked(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->access$000(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->access$100(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->sec_vibration_sound_for_incoming_calls_device_description_support_watch_summary_tablet:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->access$200(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;->access$300(Lcom/samsung/android/settings/as/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->sec_vibration_sound_for_incoming_calls_device_description_support_watch_summary:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
