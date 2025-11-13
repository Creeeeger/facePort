.class public final Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;->access$000(Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;->access$100(Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f14284e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;->access$200(Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;->access$300(Lcom/samsung/android/settings/asbase/vibration/VirtualVibrationSoundPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f14284d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
