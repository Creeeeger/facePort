.class public abstract Lcom/samsung/android/settings/gts/SettingsGtsProvider;
.super Lcom/samsung/android/gtscell/GtsCellProvider;
.source "SettingsGtsProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGtsCube:Lcom/samsung/android/settings/cube/gts/GtsCube;


# direct methods
.method public static synthetic $r8$lambda$gu390_WLlL7zywfKtakbLiq5NpU(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->lambda$getGtsItemGroups$0(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sD3ivrYto6o5Z2yuR-SXNhU9raw(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;Lcom/samsung/android/gtscell/data/GtsItemBuilder;)Lcom/samsung/android/gtscell/data/GtsItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->lambda$getGtsItemGroups$1(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;Lcom/samsung/android/gtscell/data/GtsItemBuilder;)Lcom/samsung/android/gtscell/data/GtsItem;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/gtscell/GtsCellProvider;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getGtsItemGroups$0(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->buildGtsItemExpression(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getGtsItemGroups$1(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;Lcom/samsung/android/gtscell/data/GtsItemBuilder;)Lcom/samsung/android/gtscell/data/GtsItem;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->buildGtsItem(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsItemBuilder;)Lcom/samsung/android/gtscell/data/GtsItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract getGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;",
            ">;"
        }
    .end annotation
.end method

.method public getGtsItemGroups(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    .line 58
    iget-object v2, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->mGtsCube:Lcom/samsung/android/settings/cube/gts/GtsCube;

    invoke-static {}, Lcom/samsung/android/settings/gts/GtsResources;->getInstance()Lcom/samsung/android/settings/gts/GtsResources;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/gts/GtsResources;->getGtsKeysByGroup(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getGtsItemGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 61
    sget-object v3, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gts group size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getTitleResId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v3, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;

    invoke-direct {v3, v1}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    .line 66
    new-instance v4, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;)V

    new-instance v7, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v7, v2}, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsSupplier;Lcom/samsung/android/gtscell/data/GtsSupplier;)V

    .line 66
    invoke-virtual {v3, v4}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->add(Ljava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsListBuilder;

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object p1
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "SettingsGtsProvider#onCreate"

    .line 36
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/samsung/android/settings/cube/gts/GtsCube;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/cube/gts/GtsCube;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->mGtsCube:Lcom/samsung/android/settings/cube/gts/GtsCube;

    const-string v0, "SettingsGtsProvider#super.onCreate"

    .line 38
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 39
    invoke-super {p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onCreate()Z

    move-result p0

    .line 40
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 41
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return p0
.end method

.method public setGtsItem(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/ResultCallback;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->mGtsCube:Lcom/samsung/android/settings/cube/gts/GtsCube;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/settings/cube/gts/GtsCube;->setGtsItem(Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/ResultCallback;)V

    return-void
.end method
