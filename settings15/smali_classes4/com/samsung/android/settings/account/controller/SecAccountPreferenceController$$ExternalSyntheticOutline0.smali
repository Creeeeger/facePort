.class public abstract synthetic Lcom/samsung/android/settings/account/controller/SecAccountPreferenceController$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static m(Lcom/android/settings/core/SubSettingLauncher;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
