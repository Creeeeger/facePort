.class public final Lcom/samsung/android/lib/episode/Scene$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public final mCompressedAttributes:Ljava/util/ArrayList;

.field public mDefaultType:B

.field public mIsDefault:Ljava/lang/Boolean;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/episode/Scene;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mKey:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mCompressedAttributes:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mIsDefault:Ljava/lang/Boolean;

    iget-byte p1, p1, Lcom/samsung/android/lib/episode/Scene;->mDefaultType:B

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mDefaultType:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mKey:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mCompressedAttributes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addAttribute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the value of the attribute ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") will be replaced with a new one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Eternal/Scene.Builder"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "old : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", new : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final build()Lcom/samsung/android/lib/episode/Scene;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mCompressedAttributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mCompressedAttributes:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "compressedEternalItems"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/lib/episode/Scene;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    iput-object v0, v1, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mIsDefault:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/samsung/android/lib/episode/Scene;->mIsDefault:Ljava/lang/Boolean;

    iget-byte p0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mDefaultType:B

    iput-byte p0, v1, Lcom/samsung/android/lib/episode/Scene;->mDefaultType:B

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final setDefault(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mIsDefault:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mDefaultType:B

    :cond_0
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setValue(Ljava/lang/Object;Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "Eternal/Scene.Builder"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "the element value will be replaced with a new one"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "old : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", new : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_3

    instance-of p1, p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mKey:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->compressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mCompressedAttributes:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : Compress failed / compressString() failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : Compress failed / instance is not String type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
