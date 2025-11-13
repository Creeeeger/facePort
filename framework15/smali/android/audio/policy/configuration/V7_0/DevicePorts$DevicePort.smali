.class public Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
.super Ljava/lang/Object;
.source "DevicePorts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/DevicePorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePort"
.end annotation


# instance fields
.field private blacklist _default:Ljava/lang/Boolean;

.field private blacklist address:Ljava/lang/String;

.field private blacklist encodedFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist gains:Landroid/audio/policy/configuration/V7_0/Gains;

.field private blacklist profile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist role:Landroid/audio/policy/configuration/V7_0/Role;

.field private blacklist tagName:Ljava/lang/String;

.field private blacklist type:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "tagName"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setTagName(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "type"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setType(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "role"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Role;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setRole(Landroid/audio/policy/configuration/V7_0/Role;)V

    :cond_2
    const-string v2, "address"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setAddress(Ljava/lang/String;)V

    :cond_3
    const-string v2, "default"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->set_default(Z)V

    :cond_4
    const-string v2, "encodedFormats"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setEncodedFormats(Ljava/util/List;)V

    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_a

    if-eq v4, v5, :cond_a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "profile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Profile;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;

    move-result-object v5

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->getProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v5, "gains"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Gains;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V

    goto :goto_2

    :cond_9
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    goto :goto_1

    :cond_a
    if-ne v4, v5, :cond_b

    return-object v0

    :cond_b
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DevicePorts.DevicePort is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEncodedFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getGains()Landroid/audio/policy/configuration/V7_0/Gains;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-object v0
.end method

.method public blacklist getProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Profile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRole()Landroid/audio/policy/configuration/V7_0/Role;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method

.method public blacklist getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist get_default()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method blacklist hasAddress()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasEncodedFormats()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasGains()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasRole()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasTagName()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasType()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist has_default()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    return-void
.end method

.method public blacklist setEncodedFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    return-void
.end method

.method public blacklist setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-void
.end method

.method public blacklist setRole(Landroid/audio/policy/configuration/V7_0/Role;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-void
.end method

.method public blacklist setTagName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    return-void
.end method

.method public blacklist set_default(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    return-void
.end method
