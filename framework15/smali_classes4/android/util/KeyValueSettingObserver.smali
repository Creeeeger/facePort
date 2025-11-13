.class public abstract Landroid/util/KeyValueSettingObserver;
.super Ljava/lang/Object;
.source "KeyValueSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/KeyValueSettingObserver$SettingObserver;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "KeyValueSettingObserver"


# instance fields
.field private final greylist-max-o mObserver:Landroid/database/ContentObserver;

.field private final greylist-max-o mParser:Landroid/util/KeyValueListParser;

.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;

.field private final greylist-max-o mSettingUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParser(Landroid/util/KeyValueSettingObserver;)Landroid/util/KeyValueListParser;
    .locals 0

    iget-object p0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetParserValue(Landroid/util/KeyValueSettingObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/KeyValueSettingObserver;->setParserValue()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    new-instance v0, Landroid/util/KeyValueSettingObserver$SettingObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/util/KeyValueSettingObserver$SettingObserver;-><init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;Landroid/util/KeyValueSettingObserver$SettingObserver-IA;)V

    iput-object v0, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    iput-object p2, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Landroid/util/KeyValueSettingObserver;->mSettingUri:Landroid/net/Uri;

    return-void
.end method

.method private greylist-max-o setParserValue()V
    .locals 4

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Landroid/util/KeyValueSettingObserver;->getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyValueSettingObserver"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
.end method

.method public greylist-max-o start()V
    .locals 4

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Landroid/util/KeyValueSettingObserver;->setParserValue()V

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {p0, v0}, Landroid/util/KeyValueSettingObserver;->update(Landroid/util/KeyValueListParser;)V

    return-void
.end method

.method public greylist-max-o stop()V
    .locals 2

    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public abstract greylist-max-o update(Landroid/util/KeyValueListParser;)V
.end method
