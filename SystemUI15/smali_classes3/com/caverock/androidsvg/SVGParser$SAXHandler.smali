.class public final Lcom/caverock/androidsvg/SVGParser$SAXHandler;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/caverock/androidsvg/SVGParser;


# direct methods
.method private constructor <init>(Lcom/caverock/androidsvg/SVGParser;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/caverock/androidsvg/SVGParser;Lcom/caverock/androidsvg/SVGParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser$SAXHandler;-><init>(Lcom/caverock/androidsvg/SVGParser;)V

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    return-void
.end method

.method public final endDocument()V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "xml-stylesheet"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public final startDocument()V
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/caverock/androidsvg/SVG;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
