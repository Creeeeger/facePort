.class public final Lcom/android/settingslib/spa/framework/common/SettingsPage$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static create$default(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;
    .locals 8

    const-string v0, "parameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/spa/framework/util/UniqueIdKt;->genPageId(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/spa/framework/common/SettingsPage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-object v0
.end method
