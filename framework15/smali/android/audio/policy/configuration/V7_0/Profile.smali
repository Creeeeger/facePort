.class public Landroid/audio/policy/configuration/V7_0/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field private blacklist channelMasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

.field private blacklist format:Ljava/lang/String;

.field private blacklist name:Ljava/lang/String;

.field private blacklist samplingRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Profile;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Profile;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Profile;->setName(Ljava/lang/String;)V

    :cond_0
    const-string v2, "format"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Profile;->setFormat(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "samplingRates"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "\\s+"

    if-eqz v1, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Profile;->setSamplingRates(Ljava/util/List;)V

    :cond_3
    const-string v5, "channelMasks"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    :goto_1
    if-ge v2, v6, :cond_4

    aget-object v7, v4, v2

    invoke-static {v7}, Landroid/audio/policy/configuration/V7_0/AudioChannelMask;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Profile;->setChannelMasks(Ljava/util/List;)V

    :cond_5
    const-string v2, "encapsulationType"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Profile;->setEncapsulationType(Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;)V

    :cond_6
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getChannelMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getEncapsulationType()Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    return-object v0
.end method

.method public blacklist getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSamplingRates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasChannelMasks()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasEncapsulationType()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasFormat()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasName()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSamplingRates()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setChannelMasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    return-void
.end method

.method public blacklist setEncapsulationType(Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    return-void
.end method

.method public blacklist setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSamplingRates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    return-void
.end method
