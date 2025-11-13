.class public final Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->displayName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INJECT_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "owner"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "label"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    const-string v2, "INJECT"

    invoke-direct {v1, v2, p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;-><init>(Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/SettingsPage;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    iput-object v0, v1, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->label:Ljava/lang/String;

    return-object v1
.end method
