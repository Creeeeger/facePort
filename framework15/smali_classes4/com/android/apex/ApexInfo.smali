.class public Lcom/android/apex/ApexInfo;
.super Ljava/lang/Object;
.source "ApexInfo.java"


# instance fields
.field private blacklist isActive:Ljava/lang/Boolean;

.field private blacklist isFactory:Ljava/lang/Boolean;

.field private blacklist lastUpdateMillis:Ljava/lang/Long;

.field private blacklist moduleName:Ljava/lang/String;

.field private blacklist modulePath:Ljava/lang/String;

.field private blacklist preinstalledModulePath:Ljava/lang/String;

.field private blacklist provideSharedApexLibs:Ljava/lang/Boolean;

.field private blacklist versionCode:Ljava/lang/Long;

.field private blacklist versionName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/apex/ApexInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/apex/ApexInfo;

    invoke-direct {v0}, Lcom/android/apex/ApexInfo;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "moduleName"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setModuleName(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "modulePath"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setModulePath(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "preinstalledModulePath"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setPreinstalledModulePath(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v2, "versionCode"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/apex/ApexInfo;->setVersionCode(J)V

    :cond_3
    const-string/jumbo v2, "versionName"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v2, v1

    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setVersionName(Ljava/lang/String;)V

    :cond_4
    const-string v2, "isFactory"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setIsFactory(Z)V

    :cond_5
    const-string v2, "isActive"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setIsActive(Z)V

    :cond_6
    const-string v2, "lastUpdateMillis"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/apex/ApexInfo;->setLastUpdateMillis(J)V

    :cond_7
    const-string/jumbo v2, "provideSharedApexLibs"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setProvideSharedApexLibs(Z)V

    :cond_8
    invoke-static {p0}, Lcom/android/apex/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getIsActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsFactory()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getLastUpdateMillis()J
    .locals 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getModuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getModulePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPreinstalledModulePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProvideSharedApexLibs()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getVersionCode()J
    .locals 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist hasIsActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasIsFactory()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasLastUpdateMillis()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasModuleName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasModulePath()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasPreinstalledModulePath()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasProvideSharedApexLibs()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasVersionCode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasVersionName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setIsActive(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    return-void
.end method

.method public blacklist setIsFactory(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    return-void
.end method

.method public blacklist setLastUpdateMillis(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    return-void
.end method

.method public blacklist setModuleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setModulePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPreinstalledModulePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    return-void
.end method

.method public blacklist setProvideSharedApexLibs(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    return-void
.end method

.method public blacklist setVersionCode(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    return-void
.end method

.method public blacklist setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method blacklist write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasModuleName()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_0

    const-string v0, " moduleName=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasModulePath()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " modulePath=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasPreinstalledModulePath()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " preinstalledModulePath=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getPreinstalledModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " versionCode=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasVersionName()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " versionName=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasIsFactory()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " isFactory=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getIsFactory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasIsActive()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " isActive=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getIsActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasLastUpdateMillis()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " lastUpdateMillis=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getLastUpdateMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasProvideSharedApexLibs()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " provideSharedApexLibs=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getProvideSharedApexLibs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_8
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
