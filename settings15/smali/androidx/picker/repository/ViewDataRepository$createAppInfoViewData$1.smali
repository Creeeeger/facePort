.class public final Landroidx/picker/repository/ViewDataRepository$createAppInfoViewData$1;
.super Landroidx/picker/features/observable/UpdateMutableState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getValue(Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1

    const-string v0, "prop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string v0, "prop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/model/AppInfoData;

    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
