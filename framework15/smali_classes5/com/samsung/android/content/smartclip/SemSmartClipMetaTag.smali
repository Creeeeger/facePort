.class public Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
.super Ljava/lang/Object;
.source "SemSmartClipMetaTag.java"


# instance fields
.field private blacklist mType:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    return-void
.end method

.method public whitelist setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-void
.end method
