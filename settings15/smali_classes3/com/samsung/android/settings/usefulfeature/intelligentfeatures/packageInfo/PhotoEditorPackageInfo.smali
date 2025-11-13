.class public abstract Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.is.intelligent.features.category.creativity"

    return-object p0
.end method

.method public final getDependentPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.sec.android.gallery3d"

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f080925

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getLaunchIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.mimage.photoretouching"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->getClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "launch_from"

    const-string/jumbo v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AI0034"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.sec.android.mimage.photoretouching"

    return-object p0
.end method

.method public final getQIPPopupIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "samsungapps://ProductDetail/com.sec.android.mimage.photoretouching/?source=PhotoEditor&fsOrigin=stubUpdateCheck&fsUpdateType=ond"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "form"

    const-string v2, "popup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getKeyHint()Ljava/lang/String;

    move-result-object p0

    const-string v1, "_store"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "AI0034"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isInstalled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.mimage.photoretouching"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSupportedAI()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.mimage.photoretouching"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->isIntelligentFeaturesAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
