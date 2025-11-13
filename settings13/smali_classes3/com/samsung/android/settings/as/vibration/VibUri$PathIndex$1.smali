.class final enum Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex$1;
.super Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;
.source "VibUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/as/vibration/VibUri$PathIndex-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/settings/as/vibration/VibUri$PathIndex$1-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/VibUri$PathIndex$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "vibration_pattern=?"

    return-object p0
.end method

.method public getSelectionArgs(Landroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x5

    if-ge p1, p2, :cond_0

    .line 58
    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->getSepIndexById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-object p1
.end method
