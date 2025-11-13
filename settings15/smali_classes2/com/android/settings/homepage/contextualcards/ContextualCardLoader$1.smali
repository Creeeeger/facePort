.class public final Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    iget-boolean p1, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mNotifyUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onForceLoad()V

    :cond_0
    return-void
.end method
