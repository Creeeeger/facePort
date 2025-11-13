.class public Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;
.super Ljava/lang/Object;
.source "SurroundFormats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/SurroundFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# instance fields
.field private blacklist name:Ljava/lang/String;

.field private blacklist subformats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->setName(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "subformats"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->setSubformats(Ljava/util/List;)V

    :cond_2
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubformats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasName()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSubformats()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->name:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSubformats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    return-void
.end method
