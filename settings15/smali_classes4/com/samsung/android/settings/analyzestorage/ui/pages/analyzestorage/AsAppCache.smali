.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsAppCache;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;


# virtual methods
.method public final getIconResId()I
    .locals 0

    const p0, 0x7f0801db

    return p0
.end method

.method public final getItemViewResId()I
    .locals 0

    const p0, 0x7f0a013d

    return p0
.end method

.method public final getListSubTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f1403e2

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getListTitleResId()I
    .locals 0

    const p0, 0x7f1403e1

    return p0
.end method

.method public final getSAEvent()I
    .locals 0

    const/16 p0, 0x2271

    return p0
.end method

.method public final needDivider(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final visibleSubList(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->needToShowAppCacheList(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
