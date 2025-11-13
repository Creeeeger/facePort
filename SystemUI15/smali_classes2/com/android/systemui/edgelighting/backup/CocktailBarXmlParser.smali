.class public final Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final itemsList:Ljava/util/ArrayList;

.field public mCurrentElement:Ljava/lang/Boolean;

.field public mCurrentValue:Ljava/lang/String;

.field public mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->itemsList:Ljava/util/ArrayList;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Lorg/xml/sax/InputSource;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    const-string/jumbo p1, "value"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "type"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mType:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mCurrentValue:Ljava/lang/String;

    const-string/jumbo p1, "setting"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    invoke-direct {p1}, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    const-string p2, "name"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->itemsList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->mItem:Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
