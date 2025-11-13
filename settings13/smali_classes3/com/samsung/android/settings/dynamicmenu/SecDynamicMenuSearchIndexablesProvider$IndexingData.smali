.class Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;
.super Ljava/lang/Object;
.source "SecDynamicMenuSearchIndexablesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexingData"
.end annotation


# instance fields
.field private mKeyword:Ljava/lang/String;

.field private mSearchTitle:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mTitle:Ljava/lang/CharSequence;

    .line 297
    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mSummaryOn:Ljava/lang/CharSequence;

    .line 298
    iput-object p3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mSearchTitle:Ljava/lang/String;

    .line 299
    iput-object p4, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mKeyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public getSearchTitle()Ljava/lang/String;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mSearchTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getSummaryOn()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mKeyword:Ljava/lang/String;

    return-void
.end method

.method public setSearchTitle(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mSearchTitle:Ljava/lang/String;

    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mSummaryOn:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSearchIndexablesProvider$IndexingData;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
