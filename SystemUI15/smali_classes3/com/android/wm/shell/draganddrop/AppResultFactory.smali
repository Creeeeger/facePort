.class public final Lcom/android/wm/shell/draganddrop/AppResultFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mResolvers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/AppResultFactory;->mResolvers:Ljava/util/ArrayList;

    new-instance p0, Lcom/android/wm/shell/draganddrop/IntentResolver;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/IntentResolver;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/wm/shell/draganddrop/UriResolver;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/UriResolver;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/wm/shell/draganddrop/PlainTextResolver;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/PlainTextResolver;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/draganddrop/BaseResolver;

    iput-object p3, p1, Lcom/android/wm/shell/draganddrop/BaseResolver;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    goto :goto_0

    :cond_0
    return-void
.end method
