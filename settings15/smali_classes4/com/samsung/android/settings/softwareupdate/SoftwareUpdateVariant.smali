.class abstract enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

.field public static final enum ATT:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$4;

.field public static final enum SAMSUNG:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$1;

.field public static final enum VZW:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$2;

.field public static final enum VZW_NEW:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3;


# instance fields
.field private final action:Ljava/lang/String;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end field

.field private final packageNameToCheck:Ljava/lang/String;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end field

.field private final packageNameToLaunch:Ljava/lang/String;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$1;

    const-string v4, "com.samsung.settings.SOFTWARE_UPDATE_SETTINGS"

    const-string v5, "com.wssyncmldm"

    const-string v2, "SAMSUNG"

    const/4 v1, 0x0

    const-string v3, "com.android.settings"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$2;

    const-string v12, "com.samsung.sdm.sdmviewer"

    const-string v11, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string v9, "VZW"

    const/4 v8, 0x1

    move-object v7, v0

    move-object v10, v12

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3;

    const-string v18, "com.samsung.sdm"

    const-string v17, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string v15, "VZW_NEW"

    const/4 v14, 0x2

    move-object v13, v1

    move-object/from16 v16, v18

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$4;

    const-string v12, "com.ws.dm"

    const-string v11, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string v9, "ATT"

    const/4 v8, 0x3

    move-object v7, v2

    move-object v10, v12

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v6, v0, v1, v2}, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->$VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->packageNameToLaunch:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->action:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->packageNameToCheck:Ljava/lang/String;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->values()[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->packageNameToCheck:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->isFotaSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No packages enabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->$VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    return-object v0
.end method


# virtual methods
.method public abstract className()Ljava/lang/String;
.end method

.method public final intent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->packageNameToLaunch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->className()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "SoftwareUpdateVariant"

    const-string/jumbo v1, "packageName should not be null"

    invoke-static {p0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isFotaSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract topLevelKey()Ljava/lang/String;
.end method
