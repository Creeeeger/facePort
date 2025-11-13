.class public Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;
.super Ljava/lang/Object;
.source "OpenRoamingSettings.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bracketString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getOAuthAgreements()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sem_wifi_allowed_oauth_provider"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isUserAllowedOAuthAgreement(Ljava/lang/String;)Z
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->getOAuthAgreements()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->bracketString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
