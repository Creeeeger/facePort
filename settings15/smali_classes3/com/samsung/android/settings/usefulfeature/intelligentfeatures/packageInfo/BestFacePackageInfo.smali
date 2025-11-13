.class public final Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/BestFacePackageInfo;
.super Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getKeyHint()Ljava/lang/String;
    .locals 0

    const-string p0, "key_best_face"

    return-object p0
.end method

.method public final getOrder()I
    .locals 0

    const p0, 0x1d4c0

    return p0
.end method

.method public final getSummary()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14263a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PhotoEditorPackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142649

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
