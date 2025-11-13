.class Landroid/util/XmlPullAttributes;
.super Ljava/lang/Object;
.source "XmlPullAttributes.java"

# interfaces
.implements Landroid/util/AttributeSet;


# instance fields
.field greylist mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor greylist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public whitelist getAttributeBooleanValue(IZ)Z
    .locals 1

    nop

    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    nop

    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getAttributeCount()I
    .locals 1

    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeFloatValue(IF)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1

    :cond_0
    return p2
.end method

.method public whitelist getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1

    :cond_0
    return p3
.end method

.method public whitelist getAttributeIntValue(II)I
    .locals 1

    nop

    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    nop

    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1

    nop

    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1

    nop

    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttributeNameResource(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributeNamespace(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttributeResourceValue(II)I
    .locals 1

    nop

    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    nop

    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeUnsignedIntValue(II)I
    .locals 1

    nop

    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    nop

    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClassAttribute()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "class"

    invoke-virtual {p0, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIdAttribute()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIdAttributeResourceValue(I)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getPositionDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStyleAttribute()I
    .locals 3

    const-string/jumbo v0, "style"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
