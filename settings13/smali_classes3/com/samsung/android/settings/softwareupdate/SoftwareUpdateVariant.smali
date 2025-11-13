.class abstract enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
.super Ljava/lang/Enum;
.source "SoftwareUpdateVariant.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

.field public static final enum ATT:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

.field public static final enum SAMSUNG:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

.field public static final enum VZW:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;


# instance fields
.field private final action:Ljava/lang/String;

.field private final packageNameToCheck:Ljava/lang/String;

.field private final packageNameToLaunch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 19
    new-instance v7, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$1;

    const-string v1, "SAMSUNG"

    const/4 v2, 0x0

    const-string v3, "com.android.settings"

    const-string v4, "com.samsung.settings.SOFTWARE_UPDATE_SETTINGS"

    const-string v5, "com.wssyncmldm"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$1-IA;)V

    sput-object v7, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->SAMSUNG:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    .line 32
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$2;

    const-string v9, "VZW"

    const/4 v10, 0x1

    const-string v11, "com.samsung.sdm.sdmviewer"

    const-string v12, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$2-IA;)V

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->VZW:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    .line 53
    new-instance v8, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3;

    const-string v2, "ATT"

    const/4 v3, 0x2

    const-string v4, "com.ws.dm"

    const-string v5, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3-IA;)V

    sput-object v8, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->ATT:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object v8, v1, v0

    .line 17
    sput-object v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->$VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p3

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput-object p3, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->packageNameToLaunch:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->action:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->packageNameToCheck:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
    .locals 5

    .line 69
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->values()[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 70
    iget-object v4, v3, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->packageNameToCheck:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No packages enabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->$VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    return-object v0
.end method

.method private static withClassName(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "SoftwareUpdateVariant"

    const-string v0, "packageName should not be null"

    .line 116
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 120
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract className()Ljava/lang/String;
.end method

.method intent()Landroid/content/Intent;
    .locals 2

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->packageNameToLaunch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->className()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->withClassName(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method abstract topLevelKey()Ljava/lang/String;
.end method
