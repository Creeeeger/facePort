.class public Landroid/audio/policy/configuration/V7_0/Volume;
.super Ljava/lang/Object;
.source "Volume.java"


# instance fields
.field private blacklist deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

.field private blacklist point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist ref:Ljava/lang/String;

.field private blacklist stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Volume;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Volume;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Volume;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "stream"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Volume;->setStream(Landroid/audio/policy/configuration/V7_0/AudioStreamType;)V

    :cond_0
    const-string v2, "deviceCategory"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/DeviceCategory;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Volume;->setDeviceCategory(Landroid/audio/policy/configuration/V7_0/DeviceCategory;)V

    :cond_1
    const-string/jumbo v2, "ref"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Volume;->setRef(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_5

    if-eq v4, v6, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "point"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Volume;->getPoint()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_5
    if-ne v4, v6, :cond_6

    return-object v0

    :cond_6
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Volume is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getDeviceCategory()Landroid/audio/policy/configuration/V7_0/DeviceCategory;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    return-object v0
.end method

.method public blacklist getPoint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStream()Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    return-object v0
.end method

.method blacklist hasDeviceCategory()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasRef()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasStream()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setDeviceCategory(Landroid/audio/policy/configuration/V7_0/DeviceCategory;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    return-void
.end method

.method public blacklist setRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    return-void
.end method

.method public blacklist setStream(Landroid/audio/policy/configuration/V7_0/AudioStreamType;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    return-void
.end method
