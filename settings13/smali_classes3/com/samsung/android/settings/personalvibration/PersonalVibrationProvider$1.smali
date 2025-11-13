.class Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$1;
.super Ljava/util/ArrayList;
.source "PersonalVibrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->makePatternData(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/util/List<",
        "Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;I)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$1;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    iput p2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$1;->val$type:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SEC_VIBRATION_PICKER:Z

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    .line 531
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_NOTIFICATION_PATTERN:Ljava/util/List;

    .line 530
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmSupportedColorful()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    .line 534
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->COLORFUL_RINGTONE_PATTERN:Ljava/util/List;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->COLORFUL_NOTIFICATION_PATTERN:Ljava/util/List;

    .line 533
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmSupportedLive()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    .line 538
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->LIVE_RINGTONE_PATTERN:Ljava/util/List;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->LIVE_NOTIFICATION_PATTERN:Ljava/util/List;

    .line 537
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_4
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_DEFAULT_CATEGORIZE:Z

    if-eqz p1, :cond_6

    .line 541
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SILENT_PATTERN:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    .line 545
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->SIMPLE_RINGTONE_PATTERN_LEGACY:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-static {}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$sfgetmSupportedColorful()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 547
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->COLORFUL_RINGTONE_PATTERN_LEGACY:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method
