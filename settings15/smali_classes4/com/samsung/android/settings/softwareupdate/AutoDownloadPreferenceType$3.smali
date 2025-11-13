.class final enum Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$3;
.super Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NOTHING"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_nothing"

    return-object p0
.end method

.method public final getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitleId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setDBAndLogging(Landroid/content/Context;I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final updateDBIfNeeded(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
