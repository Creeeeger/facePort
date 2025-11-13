.class public Lcom/android/settingslib/search/GtsIndexableData;
.super Ljava/lang/Object;
.source "GtsIndexableData.java"


# instance fields
.field private final mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private final mTargetClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/settingslib/search/GtsIndexableData;->mTargetClass:Ljava/lang/Class;

    .line 9
    iput-object p2, p0, Lcom/android/settingslib/search/GtsIndexableData;->mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method


# virtual methods
.method public getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/settingslib/search/GtsIndexableData;->mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-object p0
.end method
