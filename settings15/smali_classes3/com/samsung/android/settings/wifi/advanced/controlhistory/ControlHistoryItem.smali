.class public final Lcom/samsung/android/settings/wifi/advanced/controlhistory/ControlHistoryItem;
.super Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/ControlHistoryItem;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/ControlHistoryItem;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/ControlHistoryItem;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/ControlHistoryItem;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
