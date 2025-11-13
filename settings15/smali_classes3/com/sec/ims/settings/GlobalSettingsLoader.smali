.class public Lcom/sec/ims/settings/GlobalSettingsLoader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GlobalSettingsLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadGlobalSettings(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object p0

    return-object p0
.end method

.method public static loadGlobalSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/settings/GlobalSettings;
    .locals 0

    invoke-static {p0}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object p0

    return-object p0
.end method
