.class final enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$1;
.super Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
.source "SoftwareUpdateVariant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$1-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method className()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method topLevelKey()Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_software_update"

    return-object p0
.end method
