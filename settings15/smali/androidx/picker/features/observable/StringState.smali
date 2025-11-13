.class public final Landroidx/picker/features/observable/StringState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/features/observable/MutableState;


# instance fields
.field public value:Ljava/lang/String;


# virtual methods
.method public final getValue(Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1

    const-string v0, "prop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/features/observable/StringState;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "prop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/picker/features/observable/StringState;->value:Ljava/lang/String;

    return-void
.end method
