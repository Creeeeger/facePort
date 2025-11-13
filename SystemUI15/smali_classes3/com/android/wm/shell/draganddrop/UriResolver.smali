.class public final Lcom/android/wm/shell/draganddrop/UriResolver;
.super Lcom/android/wm/shell/draganddrop/BaseResolver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsClipDataFromSBrowser:Z

.field public final mMimeTypeBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/BaseResolver;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    new-instance p2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/UriResolver;->mMimeTypeBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;

    return-void
.end method


# virtual methods
.method public final makeFrom(Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)Ljava/util/Optional;
    .locals 12

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    :goto_0
    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    move-object v2, v3

    :cond_5
    if-nez v2, :cond_6

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const/4 v3, 0x1

    const-string/jumbo v4, "terrace-image-or-link-drag-label"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v3

    :cond_7
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/UriResolver;->mIsClipDataFromSBrowser:Z

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x800000

    invoke-virtual {v6, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_2
    invoke-virtual {v6}, Landroid/content/Intent;->hasWebURI()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {v6, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    iget-boolean p2, p0, Lcom/android/wm/shell/draganddrop/UriResolver;->mIsClipDataFromSBrowser:Z

    if-eqz p2, :cond_a

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    invoke-static {v6}, Lcom/android/wm/shell/draganddrop/BaseResolver;->calculateContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/UriResolver;->mMimeTypeBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;

    iget-object p2, p2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;->mBlockList:Ljava/util/Set;

    invoke-interface {p2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p1}, Landroid/content/ClipData;->getCallingUserId()I

    move-result p1

    iget-boolean p2, p0, Lcom/android/wm/shell/draganddrop/UriResolver;->mIsClipDataFromSBrowser:Z

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/BaseResolver;->resolveActivitiesForSBrowser(Landroid/content/Intent;ILjava/util/ArrayList;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)V

    goto :goto_3

    :cond_c
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/BaseResolver;->resolveActivities(Landroid/content/Intent;ILjava/util/ArrayList;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)V

    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p1, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    iget-object v7, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;Z)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
