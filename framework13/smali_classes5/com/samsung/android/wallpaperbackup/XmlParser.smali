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
    .param p1, "fileName"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 37
    const-string v0, "XmlParser"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->TAG:Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    .line 44
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 46
    .local v1, "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v2, 0x0

    .line 48
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 49
    .local v3, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 50
    .local v4, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-interface {v4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 52
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 55
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v0, "objSource":Lorg/xml/sax/InputSource;
    invoke-interface {v4, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 57
    .end local v0    # "objSource":Lorg/xml/sax/InputSource;
    goto :goto_0

    .line 58
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xml file is not exists. "

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

    .line 68
    .end local v3    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xmlReader":Lorg/xml/sax/XMLReader;
    .end local v5    # "file":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_1

    .line 69
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 73
    :cond_1
    :goto_1
    goto :goto_2

    .line 67
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 64
    :catch_1
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 69
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 62
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    if-eqz v2, :cond_1

    .line 69
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 60
    :catch_3
    move-exception v0

    .line 61
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    if-eqz v2, :cond_1

    .line 69
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 75
    :goto_2
    return-void

    .line 68
    :goto_3
    if-eqz v2, :cond_2

    .line 69
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 71
    :catch_4
    move-exception v3

    .line 72
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 73
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    nop

    .line 74
    :goto_5
    throw v0
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    if-eqz v0, :cond_0

    .line 140
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

    .line 142
    :cond_0
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 102
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWidth(I)V

    goto/16 :goto_0

    .line 104
    :cond_0
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setHeight(I)V

    goto/16 :goto_0

    .line 106
    :cond_1
    const-string/jumbo v0, "transparency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTransparency(I)V

    goto/16 :goto_0

    .line 108
    :cond_2
    const-string v0, "devicetype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setDeviceType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_3
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_4
    const-string v0, "component"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setComponent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_5
    const-string/jumbo v0, "wpType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWpType(I)V

    goto/16 :goto_0

    .line 116
    :cond_6
    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 118
    :cond_7
    const-string v0, "externalParams"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setExternalParams(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_8
    const-string/jumbo v0, "orientation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setOrientation(I)V

    goto/16 :goto_0

    .line 122
    :cond_9
    const-string/jumbo v0, "tiltSetting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 123
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTiltSettingValue(I)V

    goto :goto_0

    .line 124
    :cond_a
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 125
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setLeftValue(I)V

    goto :goto_0

    .line 126
    :cond_b
    const-string/jumbo v0, "top"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTopValue(I)V

    goto :goto_0

    .line 128
    :cond_c
    const-string/jumbo v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 129
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setRightValue(I)V

    goto :goto_0

    .line 130
    :cond_d
    const-string v0, "bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 131
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setBottomValue(I)V

    goto :goto_0

    .line 132
    :cond_e
    const-string/jumbo v0, "rotation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setRotationValue(I)V

    .line 135
    :cond_f
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

    .line 82
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getObject()Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    return-object v0
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    .line 90
    const-string v0, "User"

    .line 92
    .local v0, "objListTag":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    invoke-direct {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    .line 94
    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method
