.class public abstract enum Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

.field public static final enum CALL_SETTING:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

.field public static final enum CALL_SETTING_RINGTONES:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

.field public static final enum SPLANNER:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

.field public static final packageMap:Ljava/util/Map;


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle$1;

    const/4 v1, 0x0

    const-string/jumbo v2, "splanner"

    const-string v3, "SPLANNER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->SPLANNER:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle$2;

    const/4 v2, 0x1

    const-string v3, "call_setting"

    const-string v4, "CALL_SETTING"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->CALL_SETTING:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    new-instance v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle$3;

    const/4 v3, 0x2

    const-string v4, "call_setting_ringtones"

    const-string v5, "CALL_SETTING_RINGTONES"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->CALL_SETTING_RINGTONES:Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->$VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->packageMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->$VALUES:[Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/asbase/vibration/VibPickerStyle;

    return-object v0
.end method


# virtual methods
.method public abstract getStyle()I
.end method
