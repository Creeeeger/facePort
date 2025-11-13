.class public Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"


# instance fields
.field private blacklist call_screen_mode_supported:Ljava/lang/Boolean;

.field private blacklist engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

.field private blacklist speaker_drc_enabled:Ljava/lang/Boolean;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "speaker_drc_enabled"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setSpeaker_drc_enabled(Z)V

    :cond_0
    const-string v2, "call_screen_mode_supported"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setCall_screen_mode_supported(Z)V

    :cond_1
    const-string v2, "engine_library"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setEngine_library(Landroid/audio/policy/configuration/V7_0/EngineSuffix;)V

    :cond_2
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getCall_screen_mode_supported()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getEngine_library()Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    return-object v0
.end method

.method public blacklist getSpeaker_drc_enabled()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method blacklist hasCall_screen_mode_supported()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasEngine_library()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSpeaker_drc_enabled()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setCall_screen_mode_supported(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    return-void
.end method

.method public blacklist setEngine_library(Landroid/audio/policy/configuration/V7_0/EngineSuffix;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    return-void
.end method

.method public blacklist setSpeaker_drc_enabled(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    return-void
.end method
