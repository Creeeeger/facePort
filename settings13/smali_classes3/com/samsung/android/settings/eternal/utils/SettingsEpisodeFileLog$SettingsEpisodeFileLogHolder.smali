.class Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$SettingsEpisodeFileLogHolder;
.super Ljava/lang/Object;
.source "SettingsEpisodeFileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsEpisodeFileLogHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;-><init>(Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog-IA;)V

    sput-object v0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$SettingsEpisodeFileLogHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;

    return-void
.end method
