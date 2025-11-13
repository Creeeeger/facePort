.class public final Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final entryMap:Ljava/util/Map;

.field public final pageWithEntryMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;)V
    .locals 10

    const-string v0, "sppRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EntryRepository"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->entryMap:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->pageWithEntryMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/spa/framework/common/NullPageProvider;->INSTANCE:Lcom/android/settingslib/spa/framework/common/NullPageProvider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p1, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;->rootPages:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v7, v5, Lcom/android/settingslib/spa/framework/common/SettingsPage;->displayName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ROOT_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "label"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    const-string v9, "ROOT"

    invoke-direct {v8, v9, v5}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;-><init>(Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/SettingsPage;)V

    invoke-static {v8, v2, v5, v6}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    iput-object v7, v8, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->label:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v8, v1, v2, v5}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v8}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->entryMap:Ljava/util/Map;

    iget-object v7, v5, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->entryMap:Ljava/util/Map;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->entryMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x1388

    if-ge v1, v2, :cond_5

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    iget-object v2, v1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->toPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->pageWithEntryMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "name"

    iget-object v7, v2, Lcom/android/settingslib/spa/framework/common/SettingsPage;->sppName:Ljava/lang/String;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;->pageProviderMap:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, v2, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    invoke-interface {v4, v7}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->buildEntry(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->pageWithEntryMap:Ljava/util/Map;

    new-instance v8, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;

    invoke-direct {v8, v2, v4, v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;Ljava/util/List;Lcom/android/settingslib/spa/framework/common/SettingsEntry;)V

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    iget-object v4, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->entryMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->entryMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->entryMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->pageWithEntryMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const-string v1, "Initialize Completed: "

    const-string v2, " entries in "

    const-string v3, " pages"

    invoke-static {v1, v2, p1, p0, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
