.class public final synthetic Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/data/EpisodeHolder;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/lib/episode/Scene;

    iget-object v2, v0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
