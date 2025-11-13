.class public final Lcom/android/settingslib/search/SearchIndexableData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public final mTargetClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/search/SearchIndexableData;->mTargetClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/settingslib/search/SearchIndexableData;->mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method
