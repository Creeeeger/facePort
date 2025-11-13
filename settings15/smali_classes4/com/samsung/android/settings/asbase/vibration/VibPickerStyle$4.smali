.class Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle$4;
.super Ljava/util/HashMap;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->SPLANNER:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    const-string/jumbo v1, "splanner"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->CALL_SETTING:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    const-string v1, "call_setting"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->CALL_SETTING_RINGTONES:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    const-string v1, "call_setting_ringtones"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
