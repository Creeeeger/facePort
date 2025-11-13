.class public final Lcom/samsung/android/settings/wifi/advanced/controlhistory/ControlHistoryItemAutoWifi;
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/ControlHistoryItemAutoWifi;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/ControlHistoryItemAutoWifi;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mContext:Landroid/content/Context;

    const v0, 0x7f143486

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
