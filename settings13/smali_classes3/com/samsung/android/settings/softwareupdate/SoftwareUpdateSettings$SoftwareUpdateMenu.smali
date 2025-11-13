.class abstract enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
.super Ljava/lang/Enum;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SoftwareUpdateMenu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum DOWNLOAD_AND_INSTALL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum LAST_UPDATE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum SOFTWARE_UPDATE_TITLE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum UICC_UNLOCK:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum UPDATE_PRL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum UPDATE_PROFILE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 720
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$1;

    const-string v1, "SOFTWARE_UPDATE_TITLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$1;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$1-IA;)V

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->SOFTWARE_UPDATE_TITLE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    .line 746
    new-instance v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$2;

    const-string v4, "DOWNLOAD_AND_INSTALL"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$2;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$2-IA;)V

    sput-object v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->DOWNLOAD_AND_INSTALL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    .line 766
    new-instance v4, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$3;

    const-string v6, "AUTO_DOWNLOAD_OVER_WIFI"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$3;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$3-IA;)V

    sput-object v4, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    .line 792
    new-instance v6, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$4;

    const-string v8, "LAST_UPDATE"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$4;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$4-IA;)V

    sput-object v6, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->LAST_UPDATE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    .line 812
    new-instance v8, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$5;

    const-string v10, "UPDATE_PROFILE"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$5;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$5-IA;)V

    sput-object v8, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PROFILE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    .line 831
    new-instance v10, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$6;

    const-string v12, "UPDATE_PRL"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$6;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$6-IA;)V

    sput-object v10, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PRL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    .line 850
    new-instance v12, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$7;

    const-string v14, "UICC_UNLOCK"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$7;-><init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$7-IA;)V

    sput-object v12, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UICC_UNLOCK:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    const/4 v3, 0x7

    new-array v3, v3, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    aput-object v10, v3, v13

    aput-object v12, v3, v15

    .line 718
    sput-object v3, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->$VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 718
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
    .locals 1

    .line 718
    const-class v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
    .locals 1

    .line 718
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->$VALUES:[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    return-object v0
.end method


# virtual methods
.method getIconResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method abstract getKey()Ljava/lang/String;
.end method

.method getKeywords(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 880
    sget-object p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->SOFTWARE_UPDATE_TITLE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getTitleId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchIndexableRaw(Landroid/content/Context;)Lcom/android/settingslib/search/SearchIndexableRaw;
    .locals 2

    .line 896
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 898
    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 899
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 900
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 901
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 902
    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getIconResId()I

    move-result v1

    iput v1, v0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 903
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKeywords(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 876
    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getTitleId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract getTitleId()I
.end method

.method shouldEnable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
