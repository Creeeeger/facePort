.class public final Landroidx/activity/SystemBarStyle$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static auto$default(II)Landroidx/activity/SystemBarStyle;
    .locals 2

    sget-object v0, Landroidx/activity/SystemBarStyle$Companion$auto$1;->INSTANCE:Landroidx/activity/SystemBarStyle$Companion$auto$1;

    const-string v1, "detectDarkMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/activity/SystemBarStyle;

    invoke-direct {v1, p0, p1, v0}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    return-object v1
.end method
