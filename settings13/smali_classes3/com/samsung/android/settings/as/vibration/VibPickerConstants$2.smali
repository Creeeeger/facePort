.class Lcom/samsung/android/settings/as/vibration/VibPickerConstants$2;
.super Landroid/content/UriMatcher;
.source "VibPickerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 76
    invoke-direct {p0, p1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 77
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibUri;->RINGTONE_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/VibUri;->getType()I

    move-result p1

    const-string v0, "com.android.settings.personalvibration.PersonalVibrationProvider"

    const-string v1, "#"

    .line 77
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibUri;->RINGTONE_PATH_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/VibUri;->getType()I

    move-result p1

    const-string v1, "registerinfo/#"

    .line 79
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object p1, Lcom/samsung/android/settings/as/vibration/VibUri;->NOTIFICATION_PATH_WITH_INDEX:Lcom/samsung/android/settings/as/vibration/VibUri;

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/VibUri;->getType()I

    move-result p1

    const-string v1, "notification/#"

    .line 81
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
