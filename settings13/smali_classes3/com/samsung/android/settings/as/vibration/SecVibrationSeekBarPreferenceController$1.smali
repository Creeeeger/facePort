.class Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "SecVibrationSeekBarPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setCurrentProgress()V

    :cond_0
    return-void
.end method
