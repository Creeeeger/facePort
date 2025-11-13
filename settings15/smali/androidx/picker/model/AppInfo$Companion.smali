.class public final Landroidx/picker/model/AppInfo$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/picker/model/AppInfo;

    invoke-direct {v0, p0, p1, p2}, Landroidx/picker/model/AppInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic obtain$default(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const-string p2, ""

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0, p1, p2}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object p0

    return-object p0
.end method
