.class public final synthetic Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;

    check-cast p1, Lcom/samsung/android/lib/episode/Scene;

    sget v0, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setValues() "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsEpisodeProvider"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
