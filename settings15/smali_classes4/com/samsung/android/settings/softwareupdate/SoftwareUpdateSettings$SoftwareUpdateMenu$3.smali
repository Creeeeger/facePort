.class final enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$3;
.super Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AUTO_DOWNLOAD"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->of(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->of(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitleId(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->of(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->getTitleId()I

    move-result p0

    return p0
.end method
