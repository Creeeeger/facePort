.class Lcom/samsung/android/settings/as/vibration/VibPickerStyle$4;
.super Ljava/util/HashMap;
.source "VibPickerStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/settings/as/vibration/VibPickerStyle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->SPLANNER:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    const-string v1, "splanner"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->CALL_SETTING:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    const-string v1, "call_setting"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->CALL_SETTING_RINGTONES:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    const-string v1, "call_setting_ringtones"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
