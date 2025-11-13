.class Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings$1;
.super Ljava/lang/Object;
.source "SecWorkSoundDualRingtoneSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;->-$$Nest$fgetmRingtone2Preference(Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings$1;->this$0:Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;->-$$Nest$fgetmRingtonePreference(Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return v1
.end method
