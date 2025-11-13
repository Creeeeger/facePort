.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static volatile sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;


# instance fields
.field public accountInfoMap:Ljava/util/Map;


# virtual methods
.method public final isSignedIn(Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;)Z
    .locals 1

    const-string v0, "cloudType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->accountId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move p0, p1

    :goto_2
    xor-int/2addr p0, p1

    return p0
.end method
