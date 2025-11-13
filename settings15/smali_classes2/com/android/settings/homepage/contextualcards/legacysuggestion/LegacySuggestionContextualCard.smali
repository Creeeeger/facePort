.class public final Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mSuggestion:Landroid/service/settings/suggestions/Suggestion;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->mSuggestion:Landroid/service/settings/suggestions/Suggestion;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->mSuggestion:Landroid/service/settings/suggestions/Suggestion;

    return-void
.end method


# virtual methods
.method public final getCardType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
