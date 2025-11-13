.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsUnusedApps;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;


# virtual methods
.method public final getIconResId()I
    .locals 0

    const p0, 0x7f0801df

    return p0
.end method

.method public final getItemViewResId()I
    .locals 0

    const p0, 0x7f0a0141

    return p0
.end method

.method public final getListSubTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f140445

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getListTitleResId()I
    .locals 0

    const p0, 0x7f140444

    return p0
.end method

.method public final getSAEvent()I
    .locals 0

    const/16 p0, 0x2273

    return p0
.end method
