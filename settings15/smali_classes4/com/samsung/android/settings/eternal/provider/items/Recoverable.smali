.class public interface abstract Lcom/samsung/android/settings/eternal/provider/items/Recoverable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public abstract followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
.end method

.method public abstract getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
.end method

.method public abstract isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
.end method

.method public abstract open(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
.end method
