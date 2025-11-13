.class public abstract Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
.super Ljava/util/ArrayList;
.source "SemSmartClipMetaTagArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist addMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
.end method

.method public abstract whitelist getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
.end method

.method public abstract whitelist removeMetaTags(Ljava/lang/String;)I
.end method
