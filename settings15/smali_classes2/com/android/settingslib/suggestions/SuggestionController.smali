.class public final Lcom/android/settingslib/suggestions/SuggestionController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mConnectionListener:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

.field public final mContext:Landroid/content/Context;

.field public mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

.field public final mServiceConnection:Lcom/android/settingslib/suggestions/SuggestionController$1;

.field public final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mConnectionListener:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceIntent:Landroid/content/Intent;

    new-instance p1, Lcom/android/settingslib/suggestions/SuggestionController$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/suggestions/SuggestionController$1;-><init>(Lcom/android/settingslib/suggestions/SuggestionController;)V

    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Lcom/android/settingslib/suggestions/SuggestionController$1;

    return-void
.end method
