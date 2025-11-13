.class public Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
.super Ljava/lang/Object;
.source "AudioPolicyConfiguration.java"


# instance fields
.field private blacklist globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

.field private blacklist modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

.field private blacklist version:Landroid/audio/policy/configuration/V7_0/Version;

.field private blacklist volumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Volumes;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Version;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Version;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setVersion(Landroid/audio/policy/configuration/V7_0/Version;)V

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_6

    if-eq v4, v6, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "globalConfiguration"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setGlobalConfiguration(Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "modules"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Modules;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules;

    move-result-object v5

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->getModules()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "volumes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Volumes;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Volumes;

    move-result-object v5

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->getVolumes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "surroundSound"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/SurroundSound;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundSound;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setSurroundSound(Landroid/audio/policy/configuration/V7_0/SurroundSound;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_6
    if-ne v4, v6, :cond_7

    return-object v0

    :cond_7
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "AudioPolicyConfiguration is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getGlobalConfiguration()Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    return-object v0
.end method

.method public blacklist getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSurroundSound()Landroid/audio/policy/configuration/V7_0/SurroundSound;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    return-object v0
.end method

.method public blacklist getVersion()Landroid/audio/policy/configuration/V7_0/Version;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    return-object v0
.end method

.method public blacklist getVolumes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Volumes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasGlobalConfiguration()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSurroundSound()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasVersion()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setGlobalConfiguration(Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    return-void
.end method

.method public blacklist setSurroundSound(Landroid/audio/policy/configuration/V7_0/SurroundSound;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    return-void
.end method

.method public blacklist setVersion(Landroid/audio/policy/configuration/V7_0/Version;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    return-void
.end method
