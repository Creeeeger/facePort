.class Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$1;
.super Ljava/util/ArrayList;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/util/List<",
        "Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants$PatternContainer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$1;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;

    iput p2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper$1;->val$type:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean p1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->SIMPLE_NOTIFICATION_PATTERN:Ljava/util/List;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mSupportedColorful:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->COLORFUL_RINGTONE_PATTERN:Ljava/util/List;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->COLORFUL_NOTIFICATION_PATTERN:Ljava/util/List;

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean p1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mSupportedLive:Z

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->LIVE_RINGTONE_PATTERN:Ljava/util/List;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->LIVE_NOTIFICATION_PATTERN:Ljava/util/List;

    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean p1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_DEFAULT_CATEGORIZE:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->SILENT_PATTERN:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN_LEGACY:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationDatabaseHelper;->mSupportedColorful:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerConstants;->COLORFUL_RINGTONE_PATTERN_LEGACY:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method
