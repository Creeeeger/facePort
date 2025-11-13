.class public Lcom/samsung/android/content/smartclip/SemSmartClipViewHelper;
.super Ljava/lang/Object;
.source "SemSmartClipViewHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemSmartClipViewHelper"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static whitelist addMetaTag(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "metaTag"    # Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 47
    const/4 v0, 0x0

    const-string v1, "SemSmartClipViewHelper"

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isValidMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    .line 54
    .local v0, "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    if-nez v0, :cond_1

    .line 55
    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    move-object v0, v1

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    .line 59
    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->add(Ljava/lang/Object;)Z

    .line 61
    return v3

    .line 63
    .end local v0    # "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    :cond_2
    const-string v2, "addMetaTag : Invalid metatag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v0

    .line 48
    :cond_3
    :goto_0
    const-string v2, "addMetaTag : Have null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v0
.end method

.method public static whitelist clearAllMetaTags(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 126
    if-nez p0, :cond_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    move-result v0

    return v0
.end method

.method public static whitelist extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p2, "resultElement"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    .line 159
    const/4 v0, 0x0

    const-string v1, "SemSmartClipViewHelper"

    if-nez p0, :cond_0

    .line 160
    const-string v2, "extractDefaultSmartClipData : The view is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v0

    .line 164
    :cond_0
    if-nez p2, :cond_1

    .line 165
    const-string v2, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v0

    .line 169
    :cond_1
    if-nez p1, :cond_2

    .line 170
    const-string v2, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v0

    .line 174
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v0

    return v0
.end method

.method public static whitelist getMetaTags(Landroid/view/View;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist removeMetaTag(Landroid/view/View;Ljava/lang/String;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagType"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v1

    .line 81
    .local v1, "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->removeMetaTags(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 82
    :cond_2
    :goto_0
    return v0

    .line 77
    .end local v1    # "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    :cond_3
    :goto_1
    return v0
.end method

.method public static whitelist setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetSmartClipDataExtractionListener(Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;)Z

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist setMetaTags(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagArray"    # Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    .line 111
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetSmartClipTags(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)Z

    .line 116
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
