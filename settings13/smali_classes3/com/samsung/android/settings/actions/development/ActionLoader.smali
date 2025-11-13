.class public Lcom/samsung/android/settings/actions/development/ActionLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "ActionLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mTargetAuthority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/samsung/android/settings/actions/development/ActionLoader;->mTargetAuthority:Ljava/lang/String;

    return-void
.end method

.method private sortMapByValue(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance p0, Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 49
    new-instance p1, Lcom/samsung/android/settings/actions/development/ActionLoader$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/samsung/android/settings/actions/development/ActionLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/development/ActionLoader;->loadInBackground()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/actions/development/CommandManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/development/CommandManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/actions/development/ActionLoader;->mTargetAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/actions/development/CommandManager;->getCommandList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/command/Command;

    .line 38
    invoke-virtual {v2}, Lcom/samsung/android/sdk/command/Command;->getCommandId()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v2}, Lcom/samsung/android/sdk/command/Command;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "(Untitled)"

    :cond_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/actions/development/ActionLoader;->sortMapByValue(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method
