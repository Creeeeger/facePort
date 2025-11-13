.class public final Lcom/android/settingslib/suggestions/SuggestionController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/suggestions/SuggestionController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/suggestions/SuggestionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/suggestions/ISuggestionService;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mConnectionListener:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mConnectionListener:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
