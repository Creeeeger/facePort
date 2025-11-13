.class public abstract enum Lcom/samsung/android/settings/as/vibration/VibPickerStyle;
.super Ljava/lang/Enum;
.source "VibPickerStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/as/vibration/VibPickerStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

.field public static final enum CALL_SETTING:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

.field public static final enum CALL_SETTING_RINGTONES:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

.field public static final enum SPLANNER:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

.field private static final packageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/as/vibration/VibPickerStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$1;

    const-string v1, "SPLANNER"

    const/4 v2, 0x0

    const-string v3, "splanner"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$1;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/settings/as/vibration/VibPickerStyle$1-IA;)V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->SPLANNER:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    .line 18
    new-instance v1, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$2;

    const-string v3, "CALL_SETTING"

    const/4 v5, 0x1

    const-string v6, "call_setting"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$2;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/settings/as/vibration/VibPickerStyle$2-IA;)V

    sput-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->CALL_SETTING:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    .line 24
    new-instance v3, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$3;

    const-string v6, "CALL_SETTING_RINGTONES"

    const/4 v7, 0x2

    const-string v8, "call_setting_ringtones"

    invoke-direct {v3, v6, v7, v8, v4}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$3;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/settings/as/vibration/VibPickerStyle$3-IA;)V

    sput-object v3, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->CALL_SETTING_RINGTONES:Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    .line 11
    sput-object v4, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->$VALUES:[Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    .line 32
    new-instance v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->packageMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->packageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/settings/as/vibration/VibPickerStyle-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getPackageStyle(Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 3

    const-string v0, "current_sec_active_themepackage"

    .line 43
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wallpapertheme_state"

    const/4 v2, 0x0

    .line 45
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    .line 47
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->packageMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->getStyle()I

    move-result p0

    return p0

    .line 53
    :cond_1
    sget p0, Lcom/android/settings/R$style;->VibrationPickerDefault:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/as/vibration/VibPickerStyle;
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/as/vibration/VibPickerStyle;
    .locals 1

    .line 11
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->$VALUES:[Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/as/vibration/VibPickerStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/as/vibration/VibPickerStyle;

    return-object v0
.end method


# virtual methods
.method public abstract getStyle()I
.end method
