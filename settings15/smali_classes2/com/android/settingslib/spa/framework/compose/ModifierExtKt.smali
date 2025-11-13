.class public abstract Lcom/android/settingslib/spa/framework/compose/ModifierExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final contentDescription(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settingslib/spa/framework/compose/ModifierExtKt$contentDescription$1;

    invoke-direct {v0, p1}, Lcom/android/settingslib/spa/framework/compose/ModifierExtKt$contentDescription$1;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    return-object p0
.end method
