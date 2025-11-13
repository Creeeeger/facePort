.class public Lcom/samsung/android/widget/SemCursorIndexer;
.super Lcom/samsung/android/widget/SemAbstractIndexer;
.source "SemCursorIndexer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist EXTRA_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private final blacklist debug:Z

.field protected blacklist mColumnIndex:I

.field protected blacklist mCursor:Landroid/database/Cursor;

.field protected blacklist mSavedCursorPos:I


# direct methods
.method public constructor whitelist <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "indexCharacters"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-direct {p0, p3}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    const-string v0, "SemCursorIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->TAG:Ljava/lang/String;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->debug:Z

    .line 93
    iput-object p1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 94
    iput p2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    .line 95
    const-string v1, "SemCursorIndexer constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-gez p2, :cond_0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;II)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "indexCharacters"    # Ljava/lang/CharSequence;
    .param p4, "profileCount"    # I
    .param p5, "favoriteCount"    # I

    .line 141
    invoke-direct {p0, p3, p4, p5}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>(Ljava/lang/CharSequence;II)V

    .line 48
    const-string v0, "SemCursorIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->TAG:Ljava/lang/String;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->debug:Z

    .line 142
    iput-object p1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 143
    iput p2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemCursorIndexer constructor, profileCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", favoriteCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-gez p2, :cond_0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "indexCharacters"    # [Ljava/lang/String;
    .param p4, "aLangIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>([Ljava/lang/String;I)V

    .line 48
    const-string v0, "SemCursorIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->TAG:Ljava/lang/String;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->debug:Z

    .line 117
    iput-object p1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 118
    iput p2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    .line 119
    const-string v1, "SemCursorIndexer constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-gez p2, :cond_0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/Cursor;I[Ljava/lang/String;III)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "indexCharacters"    # [Ljava/lang/String;
    .param p4, "aLangIndex"    # I
    .param p5, "profileCount"    # I
    .param p6, "favoriteCount"    # I

    .line 167
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>([Ljava/lang/String;III)V

    .line 48
    const-string v0, "SemCursorIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->TAG:Ljava/lang/String;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->debug:Z

    .line 168
    iput-object p1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 169
    iput p2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemCursorIndexer constructor, profileCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", favoriteCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-gez p2, :cond_0

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method


# virtual methods
.method protected blacklist getBundle()Landroid/os/Bundle;
    .locals 2

    .line 220
    const-string v0, "SemCursorIndexer"

    const-string v1, "SemCursorIndexer getBundle : Bundle was used by Indexer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getItemAt(I)Ljava/lang/String;
    .locals 4
    .param p1, "pos"    # I

    .line 189
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemCursorIndexer"

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "SemCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v1

    .line 192
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    if-gez v0, :cond_1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemAt() mColumnIndex : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mColumnIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method protected blacklist getItemCount()I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "SemCursorIndexer"

    const-string v1, "SemCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method protected blacklist isDataToBeIndexedAvailable()Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemCursorIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist onBeginTransaction()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mSavedCursorPos:I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemCursorIndexer.onBeginTransaction() : Current cursor pos to save is :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCursorIndexer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method protected blacklist onEndTransaction()V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemCursorIndexer.onEndTransaction() : Saved cursor pos to restore  is :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCursorIndexer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/samsung/android/widget/SemCursorIndexer;->mSavedCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 238
    return-void
.end method

.method public whitelist setFavoriteItemsCount(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCursorIndexer;->setFavoriteItem(I)V

    .line 261
    return-void
.end method

.method public whitelist setGroupItemsCount(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCursorIndexer;->setGroupItem(I)V

    .line 273
    return-void
.end method

.method public whitelist setMiscItemsCount(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCursorIndexer;->setDigitItem(I)V

    .line 285
    return-void
.end method

.method public whitelist setProfileItemsCount(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCursorIndexer;->setProfileItem(I)V

    .line 249
    return-void
.end method
