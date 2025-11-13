.class public Lcom/android/settings/search/BaseSearchIndexProvider;
.super Ljava/lang/Object;
.source "BaseSearchIndexProvider.java"

# interfaces
.implements Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mXmlRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/search/BaseSearchIndexProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/android/settings/search/BaseSearchIndexProvider;->mXmlRes:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/android/settings/search/BaseSearchIndexProvider;->mXmlRes:I

    return-void
.end method

.method private getKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x203

    .line 236
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez p3, :cond_1

    const-string/jumbo v1, "searchable"

    const/4 v2, 0x1

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const-string v1, "key"

    .line 240
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error parsing non-indexable from xml "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseSearchIndex"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method private getNonIndexableKeysFromXml(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/SearchIndexableResource;

    .line 220
    iget v2, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 221
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v2

    .line 220
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1

    .line 216
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDynamicRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 94
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 98
    instance-of v0, p1, Lcom/android/settings/core/PreferenceControllerMixin;

    if-eqz v0, :cond_2

    .line 99
    check-cast p1, Lcom/android/settings/core/PreferenceControllerMixin;

    invoke-interface {p1, p2}, Lcom/android/settings/core/PreferenceControllerMixin;->updateDynamicRawDataToIndex(Ljava/util/List;)V

    goto :goto_0

    .line 100
    :cond_2
    instance-of v0, p1, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v0, :cond_3

    .line 101
    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/core/BasePreferenceController;->updateDynamicRawDataToIndex(Ljava/util/List;)V

    goto :goto_0

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/settings/core/PreferenceControllerMixin;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " treating the dynamic indexable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseSearchIndex"

    .line 103
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_1
    return-object p2
.end method

.method public getGtsResourceGroup()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 121
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 127
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "BaseSearchIndex"

    if-eqz v3, :cond_2

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNonIndexableKeys() already indexed from xml. key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_2
    instance-of v3, p1, Lcom/android/settings/core/PreferenceControllerMixin;

    if-eqz v3, :cond_3

    .line 134
    move-object v3, p1

    check-cast v3, Lcom/android/settings/core/PreferenceControllerMixin;

    .line 135
    invoke-interface {v3, v0}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    goto :goto_1

    .line 136
    :cond_3
    instance-of v3, p1, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v3, :cond_4

    .line 137
    move-object v3, p1

    check-cast v3, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {v3, v0}, Lcom/android/settings/core/BasePreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    goto :goto_1

    .line 140
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must implement "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/android/settings/core/PreferenceControllerMixin;

    .line 141
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " treating the key non-indexable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 149
    sget-boolean v1, Lcom/android/settings/search/BaseSearchIndexProvider;->DEBUG:Z

    if-nez v1, :cond_5

    const-wide/16 v1, 0x32

    cmp-long v1, v5, v1

    if-lez v1, :cond_1

    .line 150
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNonIndexableKeys() key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", spent time : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/search/BaseSearchIndexProvider;->getKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "BaseSearchIndex"

    const-string v2, "Error initial controller"

    .line 169
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    .line 172
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 173
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 176
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/SearchIndexableResource;

    .line 178
    iget v2, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 179
    invoke-static {p1, v2}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 178
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 181
    :cond_1
    invoke-static {v1, v0}, Lcom/android/settings/core/PreferenceControllerListHelper;->filterControllers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 72
    iget p2, p0, Lcom/android/settings/search/BaseSearchIndexProvider;->mXmlRes:I

    if-eqz p2, :cond_0

    .line 73
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 74
    iget p0, p0, Lcom/android/settings/search/BaseSearchIndexProvider;->mXmlRes:I

    iput p0, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/provider/SearchIndexableResource;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    .line 75
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
