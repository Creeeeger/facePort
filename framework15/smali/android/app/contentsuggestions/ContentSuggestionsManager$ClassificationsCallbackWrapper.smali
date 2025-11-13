.class final Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;
.super Landroid/app/contentsuggestions/IClassificationsCallback$Stub;
.source "ContentSuggestionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassificationsCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$jQKMUpI2aTKXd4oWZC1NZ0TS8Xw(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->lambda$onContentClassificationsAvailable$0(ILjava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/contentsuggestions/IClassificationsCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onContentClassificationsAvailable$0(ILjava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;->onContentClassificationsAvailable(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onContentClassificationsAvailable(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentClassification;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;ILjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
