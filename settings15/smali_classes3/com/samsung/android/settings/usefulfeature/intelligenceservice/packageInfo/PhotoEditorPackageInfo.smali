.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PackageInfo;


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.is.category.image"

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    const v0, 0x7f080925

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyHint()Ljava/lang/String;
    .locals 0

    const-string p0, "key_photo_editor"

    return-object p0
.end method

.method public final getLaunchIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.mimage.photoretouching"

    invoke-static {p0, v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->getClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "from_settings"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "launch_from"

    const-string/jumbo v1, "settings"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key"

    const-string v1, "key_photo_editor"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "AI003"

    invoke-static {p0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOrder()I
    .locals 0

    const p0, 0x497c8

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.sec.android.mimage.photoretouching"

    return-object p0
.end method

.method public final getQIPPopupIntent()Landroid/content/Intent;
    .locals 2

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "samsungapps://ProductDetail/com.sec.android.mimage.photoretouching/?source=PhotoEditor&fsOrigin=stubUpdateCheck&fsUpdateType=ond"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v0, 0x14000020

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "type"

    const-string v1, "cover"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "form"

    const-string v1, "popup"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "AI003"

    const-string v1, "key_photo_editor_store"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSummary()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14263f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142631

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isInstalled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.mimage.photoretouching"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSupportedAI()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.mimage.photoretouching"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceUtils;->isSupportedAI(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
