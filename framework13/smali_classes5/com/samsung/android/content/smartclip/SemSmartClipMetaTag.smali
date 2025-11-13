.class public Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
.super Ljava/lang/Object;
.source "SemSmartClipMetaTag.java"


# instance fields
.field private blacklist mType:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist getType()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValue()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagType"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public whitelist setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    .line 72
    return-void
.end method
