.class public final Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$currentKey:Ljava/lang/String;

.field public final synthetic val$highlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/TopLevelHighlightMixin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$2;->val$highlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iput-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$2;->val$currentKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$2;->val$highlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController$2;->val$currentKey:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-eqz v1, :cond_0

    iput-object p0, v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
