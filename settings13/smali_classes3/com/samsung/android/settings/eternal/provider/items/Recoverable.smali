.class public interface abstract Lcom/samsung/android/settings/eternal/provider/items/Recoverable;
.super Ljava/lang/Object;
.source "Recoverable.java"


# virtual methods
.method public abstract followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
.end method

.method public abstract getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
.end method

.method public abstract isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
.end method

.method public abstract isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
.end method

.method public abstract open(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
.end method
