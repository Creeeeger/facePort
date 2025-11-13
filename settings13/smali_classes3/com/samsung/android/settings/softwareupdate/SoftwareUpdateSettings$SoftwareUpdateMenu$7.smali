.class final enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$7;
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

    .line 850
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$7-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$7;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "uicc_unlock"

    return-object p0
.end method

.method getTitleId()I
    .locals 0

    .line 861
    sget p0, Lcom/android/settings/R$string;->uicc_unlock:I

    return p0
.end method

.method shouldEnable(Landroid/content/Context;)Z
    .locals 0

    .line 866
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->-$$Nest$sfgetmDisplayUICC()Z

    move-result p0

    return p0
.end method
