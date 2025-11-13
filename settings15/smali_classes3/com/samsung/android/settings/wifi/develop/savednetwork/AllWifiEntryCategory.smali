.class public final Lcom/samsung/android/settings/wifi/develop/savednetwork/AllWifiEntryCategory;
.super Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryCategoryOption;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getCategoryTitles()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
