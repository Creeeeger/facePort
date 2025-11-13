.class public Lcom/samsung/android/wallpaperbackup/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mCurrentElement:Z

.field private blacklist mCurrentValue:Ljava/lang/String;

.field private blacklist mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

.field private blacklist mItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "XmlParser"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    invoke-interface {v4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v4, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xml file is not exists. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_2
    :goto_4
    nop

    :goto_5
    throw v0
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWidth(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setHeight(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "transparency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTransparency(I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "devicetype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setDeviceType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "component"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setComponent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "wpType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWpType(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "externalParams"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setExternalParams(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "componentname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setComponentName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "isHomeAndLockPaired"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setIsHomeAndLockPaired(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "orientation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setOrientation(I)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "tiltSetting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTiltSettingValue(I)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setLeftValue(I)V

    goto :goto_0

    :cond_d
    const-string v0, "top"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTopValue(I)V

    goto :goto_0

    :cond_e
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setRightValue(I)V

    goto :goto_0

    :cond_f
    const-string v0, "bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setBottomValue(I)V

    goto :goto_0

    :cond_10
    const-string v0, "rotation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setRotationValue(I)V

    goto :goto_0

    :cond_11
    const-string v0, "covertype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setCoverType(Ljava/lang/String;)V

    :cond_12
    :goto_0
    return-void
.end method

.method public blacklist getItemsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getObject()Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    return-object v0
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    const-string v0, "User"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    invoke-direct {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
