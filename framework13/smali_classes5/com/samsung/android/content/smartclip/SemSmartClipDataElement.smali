.class public interface abstract Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;
.super Ljava/lang/Object;
.source "SemSmartClipDataElement.java"


# virtual methods
.method public abstract whitelist addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
.end method

.method public abstract whitelist clearMetaData()V
.end method

.method public abstract whitelist getAllTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
.end method

.method public abstract whitelist getExtractionMode()I
.end method

.method public abstract whitelist getMetaAreaRect()Landroid/graphics/Rect;
.end method

.method public abstract whitelist getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
.end method

.method public abstract whitelist removeTags(Ljava/lang/String;)I
.end method

.method public abstract whitelist sendSuspendedExtractionData()Z
.end method

.method public abstract whitelist setMetaAreaRect(Landroid/graphics/Rect;)V
.end method

.method public abstract whitelist setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
.end method
