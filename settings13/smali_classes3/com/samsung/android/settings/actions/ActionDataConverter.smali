.class Lcom/samsung/android/settings/actions/ActionDataConverter;
.super Ljava/lang/Object;
.source "ActionDataConverter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIndexableDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addIndexableToMap(Lcom/android/settingslib/search/SearchIndexableRaw;)V
    .locals 2

    .line 441
    iget-object v0, p1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    iget-object v0, p1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/actions/ActionDataConverter;->removeIndexable(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    iget-object v0, p1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 442
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;

    const-string p1, "Both Key and Title should not be null"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildActionData(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/settings/actions/ActionData;
    .locals 9

    .line 394
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/ActionDataConverter;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ActionDataConverter"

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    .line 395
    invoke-interface {p3}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/ActionDataConverter;->getIndexable(Ljava/lang/String;)Lcom/android/settingslib/search/SearchIndexableRaw;

    move-result-object v0

    .line 398
    iget-object v3, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 399
    iget-object v4, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/actions/ActionDataConverter;->convertTitleIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 400
    iget-object v4, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 401
    iget v5, v0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 402
    invoke-virtual {p3}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v6

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, ", "

    if-eqz v7, :cond_0

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Key cannot be empty : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 409
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Title cannot be empty : "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 414
    :cond_1
    new-instance v1, Lcom/samsung/android/settings/actions/ActionData$Builder;

    invoke-direct {v1}, Lcom/samsung/android/settings/actions/ActionData$Builder;-><init>()V

    .line 415
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p1

    .line 416
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 417
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 418
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setIcon(I)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 419
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 420
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p2, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 421
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 422
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setActionType(I)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object p0

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionData$Builder;->build()Lcom/samsung/android/settings/actions/ActionData;

    move-result-object p0

    return-object p0

    .line 428
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not controllable : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 432
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find a indexable for : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private clearIndexableMap()V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private convertTitleIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 468
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 469
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method private getActionDataFromProvider(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    .line 165
    invoke-interface {p1, v1, v2}, Lcom/android/settingslib/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 171
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/SearchIndexableResource;

    .line 172
    iget v4, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-nez v4, :cond_0

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provides invalid XML in search provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActionDataConverter"

    invoke-static {v5, v4}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0, v4, p2}, Lcom/samsung/android/settings/actions/ActionDataConverter;->getActionDataFromXML(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/actions/ActionDataConverter;->getActionDataFromRaw(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/actions/ActionDataConverter;->uniqueActionData(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getActionDataFromRaw(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/android/settingslib/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    const-string v2, "ActionDataConverter"

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 220
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    .line 222
    :try_start_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/actions/ActionDataConverter;->addIndexableToMap(Lcom/android/settingslib/search/SearchIndexableRaw;)V
    :try_end_0
    .catch Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data when building ActionData (raw): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_0
    instance-of v1, p1, Lcom/android/settings/search/BaseSearchIndexProvider;

    if-eqz v1, :cond_4

    .line 230
    check-cast p1, Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object v1, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 232
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 236
    instance-of v6, v4, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 240
    :try_start_1
    invoke-virtual {v4}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v6

    .line 242
    move-object v7, v4

    check-cast v7, Lcom/android/settings/core/BasePreferenceController;

    invoke-interface {v7}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action not supported (raw) : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/actions/ActionDataConverter;->isIndexed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    check-cast v4, Lcom/android/settings/core/BasePreferenceController;

    invoke-direct {p0, v6, p2, v4}, Lcom/samsung/android/settings/actions/ActionDataConverter;->buildActionData(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/settings/actions/ActionData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 251
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action data convert failed (raw) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 261
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rate of BasePreferenceController (raw) : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method private getActionDataFromXML(ILjava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;"
        }
    .end annotation

    const-string v0, ", "

    const-string v1, "ActionDataConverter"

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 276
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 279
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PreferenceScreen"

    .line 285
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-static {v1, v4}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 291
    iget-object v5, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    .line 292
    iget-object v5, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    const/16 v6, 0x7f

    invoke-static {v5, p1, v6}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size of metadata: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v6, "key"

    .line 307
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    .line 308
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "controller"

    .line 310
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 312
    new-instance v9, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v10, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 314
    iput-object v6, v9, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 315
    iput-object v7, v9, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 316
    iput-object v4, v9, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v7, "summary"

    .line 317
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const-string v7, "icon"

    .line 318
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v9, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 319
    iput-object p2, v9, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 321
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/actions/ActionDataConverter;->addIndexableToMap(Lcom/android/settingslib/search/SearchIndexableRaw;)V

    .line 323
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 324
    iget-object v5, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    .line 325
    invoke-direct {p0, v5, v8, v6}, Lcom/samsung/android/settings/actions/ActionDataConverter;->getController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v5

    .line 328
    invoke-direct {p0, v6, p2, v5}, Lcom/samsung/android/settings/actions/ActionDataConverter;->buildActionData(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/settings/actions/ActionData;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 331
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 334
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Controller cannot be empty (xml) : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 342
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown exception (xml) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v5

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data when building ActionData (xml) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-static {v1, v5}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 353
    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 350
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Action data convert failed (xml) : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    goto :goto_2

    :catch_3
    move-exception p0

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error parsing PreferenceScreen: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    return-object v2

    :goto_4
    if-eqz v3, :cond_6

    .line 353
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 354
    :cond_6
    throw p0
.end method

.method private getController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 0

    .line 478
    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/actions/ActionBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    return-object p0
.end method

.method private getIndexable(Ljava/lang/String;)Lcom/android/settingslib/search/SearchIndexableRaw;
    .locals 1

    .line 457
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/ActionDataConverter;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/search/SearchIndexableRaw;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getNonSearchableActionData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-static {}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->getInstance()Lcom/samsung/android/settings/actions/ActionIndexableResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v1

    .line 364
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 365
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 372
    invoke-direct {p0, v4, v5, v3}, Lcom/samsung/android/settings/actions/ActionDataConverter;->buildActionData(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/settings/actions/ActionData;

    move-result-object v4

    if-nez v4, :cond_0

    .line 377
    new-instance v4, Lcom/samsung/android/settings/actions/ActionData$Builder;

    invoke-direct {v4}, Lcom/samsung/android/settings/actions/ActionData$Builder;-><init>()V

    .line 378
    invoke-virtual {v3}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object v4

    .line 379
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {v3}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/actions/ActionData$Builder;->setActionType(I)Lcom/samsung/android/settings/actions/ActionData$Builder;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Lcom/samsung/android/settings/actions/ActionData$Builder;->build()Lcom/samsung/android/settings/actions/ActionData;

    move-result-object v4

    .line 384
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 386
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionDataConverter"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isIndexed(Ljava/lang/String;)Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeIndexable(Ljava/lang/String;)V
    .locals 1

    .line 461
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/ActionDataConverter;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private uniqueActionData(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/actions/ActionData;

    .line 197
    invoke-virtual {v1}, Lcom/samsung/android/settings/actions/ActionData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/samsung/android/settings/actions/ActionData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/actions/ActionData;

    .line 204
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    invoke-virtual {p2}, Lcom/samsung/android/settings/actions/ActionData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method


# virtual methods
.method public getActionData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/actions/ActionData;",
            ">;"
        }
    .end annotation

    const-string v0, "ActionDataConverter"

    const-string v1, "getActionData Started"

    .line 99
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/ActionDataConverter;->clearIndexableMap()V

    .line 104
    iget-object v2, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settingslib/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v2

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bundles: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Added: "

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/search/SearchIndexableData;

    .line 114
    invoke-virtual {v5}, Lcom/android/settingslib/search/SearchIndexableData;->getTargetClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-virtual {v5}, Lcom/android/settingslib/search/SearchIndexableData;->getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    move-result-object v5

    if-nez v5, :cond_0

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dose not implement Search Index Provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_0
    const-class v8, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v5, "Skip development options"

    .line 124
    invoke-static {v0, v5}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start getActionData from Provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    invoke-direct {p0, v5, v7}, Lcom/samsung/android/settings/actions/ActionDataConverter;->getActionDataFromProvider(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End getActionData from Provider: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot get ActionData from: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const-string v2, "Start getActionData from Non-Searchable list"

    .line 141
    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/ActionDataConverter;->getNonSearchableActionData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "End getActionData from Non-Searchable list"

    .line 144
    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/actions/ActionDataConverter;->uniqueActionData(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p0, "getActionData Done"

    .line 148
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/actions/ActionData;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/settings/actions/ActionData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fragmentClass :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/actions/ActionData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is added to ActionData"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-object v1
.end method
