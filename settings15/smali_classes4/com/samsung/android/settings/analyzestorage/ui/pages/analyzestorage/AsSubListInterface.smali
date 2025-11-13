.class public interface abstract Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public abstract getIconResId()I
.end method

.method public abstract getItemViewResId()I
.end method

.method public abstract getListSubTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getListTitleResId()I
.end method

.method public abstract getSAEvent()I
.end method

.method public needDivider(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public visibleSubList(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
