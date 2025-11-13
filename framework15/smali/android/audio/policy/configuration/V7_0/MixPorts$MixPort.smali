.class public Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;
.super Ljava/lang/Object;
.source "MixPorts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/MixPorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixPort"
.end annotation


# instance fields
.field private blacklist flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist gains:Landroid/audio/policy/configuration/V7_0/Gains;

.field private blacklist maxActiveCount:Ljava/lang/Long;

.field private blacklist maxOpenCount:Ljava/lang/Long;

.field private blacklist name:Ljava/lang/String;

.field private blacklist preferredUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setName(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "role"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Role;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setRole(Landroid/audio/policy/configuration/V7_0/Role;)V

    :cond_1
    const-string v2, "flags"

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

    invoke-static {v9}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setFlags(Ljava/util/List;)V

    :cond_3
    const-string/jumbo v5, "maxOpenCount"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setMaxOpenCount(J)V

    :cond_4
    const-string/jumbo v5, "maxActiveCount"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setMaxActiveCount(J)V

    :cond_5
    const-string/jumbo v5, "preferredUsage"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    invoke-static {v6}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioUsage;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setPreferredUsage(Ljava/util/List;)V

    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_b

    if-eq v4, v5, :cond_b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "profile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Profile;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;

    move-result-object v5

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->getProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    const-string v5, "gains"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Gains;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V

    goto :goto_3

    :cond_a
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    goto :goto_2

    :cond_b
    if-ne v4, v5, :cond_c

    return-object v0

    :cond_c
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "MixPorts.MixPort is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getFlags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getGains()Landroid/audio/policy/configuration/V7_0/Gains;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-object v0
.end method

.method public blacklist getMaxActiveCount()J
    .locals 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMaxOpenCount()J
    .locals 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPreferredUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

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

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRole()Landroid/audio/policy/configuration/V7_0/Role;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method

.method blacklist hasFlags()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasGains()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMaxActiveCount()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMaxOpenCount()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasName()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasPreferredUsage()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasRole()Z
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setFlags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    return-void
.end method

.method public blacklist setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-void
.end method

.method public blacklist setMaxActiveCount(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    return-void
.end method

.method public blacklist setMaxOpenCount(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPreferredUsage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    return-void
.end method

.method public blacklist setRole(Landroid/audio/policy/configuration/V7_0/Role;)V
    .locals 0

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-void
.end method
