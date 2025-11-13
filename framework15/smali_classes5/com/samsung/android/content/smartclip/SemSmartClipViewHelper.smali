.class public Lcom/samsung/android/content/smartclip/SemSmartClipViewHelper;
.super Ljava/lang/Object;
.source "SemSmartClipViewHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemSmartClipViewHelper"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addMetaTag(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SemSmartClipViewHelper"

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isValidMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1

    :cond_2
    const-string v2, "addMetaTag : Invalid metatag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :goto_0
    const-string v2, "addMetaTag : Have null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static whitelist clearAllMetaTags(Landroid/view/View;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    move-result v0

    return v0
.end method

.method public static whitelist extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SemSmartClipViewHelper"

    if-nez p0, :cond_0

    const-string v2, "extractDefaultSmartClipData : The view is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v0

    return v0
.end method

.method public static whitelist getMetaTags(Landroid/view/View;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist removeMetaTag(Landroid/view/View;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->removeMetaTags(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static whitelist setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetSmartClipDataExtractionListener(Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist setMetaTags(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
