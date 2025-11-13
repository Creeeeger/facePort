.class public Landroid/audio/policy/configuration/V7_0/Gains$Gain;
.super Ljava/lang/Object;
.source "Gains.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Gains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gain"
.end annotation


# instance fields
.field private blacklist channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

.field private blacklist defaultValueMB:Ljava/lang/Integer;

.field private blacklist maxRampMs:Ljava/lang/Integer;

.field private blacklist maxValueMB:Ljava/lang/Integer;

.field private blacklist minRampMs:Ljava/lang/Integer;

.field private blacklist minValueMB:Ljava/lang/Integer;

.field private blacklist mode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist name:Ljava/lang/String;

.field private blacklist stepValueMB:Ljava/lang/Integer;

.field private blacklist useForVolume:Ljava/lang/Boolean;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains$Gain;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setName(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "mode"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "\\s+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-static {v7}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMode(Ljava/util/List;)V

    :cond_2
    const-string v2, "channel_mask"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioChannelMask;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setChannel_mask(Landroid/audio/policy/configuration/V7_0/AudioChannelMask;)V

    :cond_3
    const-string/jumbo v2, "minValueMB"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMinValueMB(I)V

    :cond_4
    const-string/jumbo v2, "maxValueMB"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMaxValueMB(I)V

    :cond_5
    const-string v2, "defaultValueMB"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setDefaultValueMB(I)V

    :cond_6
    const-string/jumbo v2, "stepValueMB"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setStepValueMB(I)V

    :cond_7
    const-string/jumbo v2, "minRampMs"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMinRampMs(I)V

    :cond_8
    const-string/jumbo v2, "maxRampMs"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMaxRampMs(I)V

    :cond_9
    const-string/jumbo v2, "useForVolume"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setUseForVolume(Z)V

    :cond_a
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getChannel_mask()Landroid/audio/policy/configuration/V7_0/AudioChannelMask;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    return-object v0
.end method

.method public blacklist getDefaultValueMB()I
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxRampMs()I
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxValueMB()I
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMinRampMs()I
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMinValueMB()I
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStepValueMB()I
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getUseForVolume()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method blacklist hasChannel_mask()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasDefaultValueMB()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMaxRampMs()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMaxValueMB()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMinRampMs()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMinValueMB()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMode()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasName()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasStepValueMB()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasUseForVolume()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setChannel_mask(Landroid/audio/policy/configuration/V7_0/AudioChannelMask;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    return-void
.end method

.method public blacklist setDefaultValueMB(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    return-void
.end method

.method public blacklist setMaxRampMs(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    return-void
.end method

.method public blacklist setMaxValueMB(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    return-void
.end method

.method public blacklist setMinRampMs(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    return-void
.end method

.method public blacklist setMinValueMB(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    return-void
.end method

.method public blacklist setMode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    return-void
.end method

.method public blacklist setStepValueMB(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    return-void
.end method

.method public blacklist setUseForVolume(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    return-void
.end method
