.class public final Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field public final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGParser;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public final getIndex(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getLength()I
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p0

    return p0
.end method

.method public final getLocalName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getQName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getType(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getURI(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getValue(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
