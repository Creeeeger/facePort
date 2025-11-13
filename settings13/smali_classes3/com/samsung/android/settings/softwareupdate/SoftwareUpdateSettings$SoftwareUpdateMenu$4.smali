.class final enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$4;
.super Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 792
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$4-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$4;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_last_update"

    return-object p0
.end method

.method getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 809
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_software_update_last_software_information_summary_for_search:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getTitleId()I
    .locals 0

    .line 803
    sget p0, Lcom/android/settings/R$string;->sec_software_update_last_software_information_title:I

    return p0
.end method
