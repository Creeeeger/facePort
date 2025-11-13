.class final enum Lcom/samsung/android/settings/as/vibration/VibPickerStyle$1;
.super Lcom/samsung/android/settings/as/vibration/VibPickerStyle;
.source "VibPickerStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/settings/as/vibration/VibPickerStyle-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/settings/as/vibration/VibPickerStyle$1-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/vibration/VibPickerStyle$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStyle()I
    .locals 0

    .line 15
    sget p0, Lcom/android/settings/R$style;->ThemeSPlanner:I

    return p0
.end method
