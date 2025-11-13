.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

.field public final synthetic f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->contextualCardFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dismissed_timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v3, "cards"

    const-string v4, "name=?"

    invoke-virtual {v1, v3, v2, v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->DELETE_CARD_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
