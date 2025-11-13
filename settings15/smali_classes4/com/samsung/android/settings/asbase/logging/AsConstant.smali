.class public abstract Lcom/samsung/android/settings/asbase/logging/AsConstant;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sounds_and_vibration_relative_link_do_not_disturb:I

.field public static final sounds_and_vibration_relative_link_hearing_enhancements:I

.field public static final sounds_and_vibration_relative_link_smart_alert:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "9003"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/asbase/logging/AsConstant;->sounds_and_vibration_relative_link_smart_alert:I

    const-string v0, "9201"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/asbase/logging/AsConstant;->sounds_and_vibration_relative_link_do_not_disturb:I

    const-string v0, "9203"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/asbase/logging/AsConstant;->sounds_and_vibration_relative_link_hearing_enhancements:I

    return-void
.end method
