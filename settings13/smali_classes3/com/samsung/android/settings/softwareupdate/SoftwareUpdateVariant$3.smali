.class final enum Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3;
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
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method className()Ljava/lang/String;
    .locals 0

    const-string p0, "com.att.fotaagent.enabler.ui.userinit.UserInitActivity"

    return-object p0
.end method

.method topLevelKey()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dashboard_tile_pref_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant$3;->className()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
