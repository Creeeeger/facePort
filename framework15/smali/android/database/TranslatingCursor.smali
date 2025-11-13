.class public Landroid/database/TranslatingCursor;
.super Landroid/database/CrossProcessCursorWrapper;
.source "TranslatingCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/TranslatingCursor$Config;,
        Landroid/database/TranslatingCursor$Translator;
    }
.end annotation


# instance fields
.field private final blacklist mAuxiliaryColumnIndex:I

.field private final blacklist mConfig:Landroid/database/TranslatingCursor$Config;

.field private final blacklist mDropLast:Z

.field private final blacklist mTranslateColumnIndices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslator:Landroid/database/TranslatingCursor$Translator;


# direct methods
.method public constructor blacklist <init>(Landroid/database/Cursor;Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/TranslatingCursor$Config;

    iput-object v0, p0, Landroid/database/TranslatingCursor;->mConfig:Landroid/database/TranslatingCursor$Config;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/TranslatingCursor$Translator;

    iput-object v0, p0, Landroid/database/TranslatingCursor;->mTranslator:Landroid/database/TranslatingCursor$Translator;

    iput-boolean p4, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    iget-object v0, p2, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/database/TranslatingCursor;->mAuxiliaryColumnIndex:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/database/TranslatingCursor$Config;->translateColumns:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist query(Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Landroid/database/TranslatingCursor$Config;->translateColumns:[Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v4

    :goto_3
    if-nez v5, :cond_4

    invoke-virtual/range {p2 .. p11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    :cond_4
    if-nez v2, :cond_5

    const-class v6, Ljava/lang/String;

    iget-object v7, v0, Landroid/database/TranslatingCursor$Config;->auxiliaryColumn:Ljava/lang/String;

    invoke-static {v6, v1, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, [Ljava/lang/String;

    :cond_5
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, v1

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v7, Landroid/database/TranslatingCursor;

    if-nez v2, :cond_6

    move v3, v4

    :cond_6
    move-object v4, p1

    invoke-direct {v7, v6, p0, p1, v3}, Landroid/database/TranslatingCursor;-><init>(Landroid/database/Cursor;Landroid/database/TranslatingCursor$Config;Landroid/database/TranslatingCursor$Translator;Z)V

    return-object v7
.end method


# virtual methods
.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/database/CrossProcessCursorWrapper;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public whitelist getBlob(I)[B
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getBlob(I)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getColumnCount()I
    .locals 1

    iget-boolean v0, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Landroid/database/TranslatingCursor;->mDropLast:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDouble(I)D
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getFloat(I)F
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getFloat(I)F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getInt(I)I
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getInt(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getLong(I)J
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getShort(I)S
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getShort(I)S

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslator:Landroid/database/TranslatingCursor$Translator;

    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/database/TranslatingCursor;->mAuxiliaryColumnIndex:I

    invoke-virtual {p0, p1}, Landroid/database/TranslatingCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p0}, Landroid/database/TranslatingCursor$Translator;->translate(Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(I)I
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getWindow()Landroid/database/CursorWindow;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWrappedCursor()Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Returning underlying cursor risks leaking data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isNull(I)Z
    .locals 2

    iget-object v0, p0, Landroid/database/TranslatingCursor;->mTranslateColumnIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/database/TranslatingCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->isNull(I)Z

    move-result v0

    return v0
.end method
