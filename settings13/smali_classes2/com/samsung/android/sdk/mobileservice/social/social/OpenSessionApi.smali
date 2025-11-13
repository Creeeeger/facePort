.class public Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;
.super Ljava/lang/Object;
.source "OpenSessionApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0

    const-string p0, "OpenSessionApi"

    .line 86
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getGroupDetailDataFromAgent(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;)Landroid/os/Bundle;
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 151
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "com.samsung.android.mobileservice.social.common.provider.OpenSessionProvider"

    .line 152
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "getGroupDetailIntent"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private isSupportedSemsAgentVersion(Landroid/content/Context;I)Z
    .locals 0

    .line 80
    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/SeMobileService;->getAgentVersion(Landroid/content/Context;)I

    move-result p0

    if-lt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getIntentForGroupDetail(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;)Landroid/content/Intent;
    .locals 2

    const-string v0, "getIntentForGroupDetail"

    .line 133
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;->debugLog(Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mobileservice.action.ACTION_EXTERNAL_GROUP_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x4d840e25    # 2.7693994E8f

    .line 135
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;->isSupportedSemsAgentVersion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;->getGroupDetailDataFromAgent(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "com.samsung.android.mobileservice.social.common.provider.OpenSessionProvider getGroupDetailIntent method call is null"

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/social/OpenSessionApi;->debugLog(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method
