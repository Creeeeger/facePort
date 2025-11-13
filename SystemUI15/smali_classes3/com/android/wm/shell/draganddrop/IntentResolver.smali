.class public final Lcom/android/wm/shell/draganddrop/IntentResolver;
.super Lcom/android/wm/shell/draganddrop/BaseResolver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/BaseResolver;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    return-void
.end method


# virtual methods
.method public final makeFrom(Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)Ljava/util/Optional;
    .locals 7

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    if-lez p2, :cond_9

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {v1}, Landroid/content/Intent;->hasWebURI()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/ClipData;->getCallingPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/content/ClipData;->getCallingPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/ClipData;->getCallingUserId()I

    move-result p2

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "terrace-image-or-link-drag-label"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/android/wm/shell/draganddrop/BaseResolver;->resolveActivitiesForSBrowser(Landroid/content/Intent;ILjava/util/ArrayList;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/android/wm/shell/draganddrop/BaseResolver;->resolveActivities(Landroid/content/Intent;ILjava/util/ArrayList;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)V

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/BaseResolver;->calculateContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;Z)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
