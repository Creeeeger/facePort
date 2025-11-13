.class public Landroid/app/DownloadManager$SecQuery;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecQuery"
.end annotation


# static fields
.field public static final blacklist ORDER_ASCENDING:I = 0x1

.field public static final blacklist ORDER_DESCENDING:I = 0x2


# instance fields
.field private blacklist mFilterString:Ljava/lang/String;

.field private blacklist mIds:[J

.field private blacklist mOnlyIncludeVisibleInDownloadsUi:Z

.field private blacklist mOrderByColumn:Ljava/lang/String;

.field private blacklist mOrderDirection:I

.field private blacklist mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    .line 1129
    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mStatusFlags:Ljava/lang/Integer;

    .line 1130
    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    .line 1131
    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    .line 1132
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DownloadManager$SecQuery;->mOnlyIncludeVisibleInDownloadsUi:Z

    return-void
.end method

.method private blacklist joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1261
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1263
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1264
    .local v3, "part":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1265
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    const/4 v1, 0x0

    .line 1269
    .end local v3    # "part":Ljava/lang/String;
    goto :goto_0

    .line 1270
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$SecQuery;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 1181
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1185
    :cond_1
    :goto_0
    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_1

    .line 1187
    :cond_2
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1188
    const-string/jumbo v0, "total_bytes"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_1

    .line 1189
    :cond_3
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1190
    const-string/jumbo v0, "title COLLATE NOCASE"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    .line 1194
    :goto_1
    iput p2, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    .line 1195
    return-object p0

    .line 1192
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    .line 1205
    move-object v1, p3

    .line 1206
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 1207
    .local v6, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1209
    .local v0, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v3, v2

    .line 1210
    .local v3, "whereArgsCount":I
    :goto_0
    iget-object v4, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    :goto_1
    move v7, v4

    .line 1211
    .end local v3    # "whereArgsCount":I
    .local v7, "whereArgsCount":I
    new-array v8, v7, [Ljava/lang/String;

    .line 1213
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    .local v8, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x1

    if-lez v7, :cond_3

    .line 1214
    if-eqz v2, :cond_2

    .line 1215
    invoke-static {v2}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    iget-object v2, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    invoke-static {v2, v8}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    .line 1219
    :cond_2
    iget-object v2, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1220
    const-string/jumbo v2, "title LIKE ?"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    array-length v2, v8

    sub-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1253
    :cond_3
    const-string v2, " AND "

    invoke-direct {p0, v2, v6}, Landroid/app/DownloadManager$SecQuery;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 1254
    .local v9, "selection":Ljava/lang/String;
    iget v2, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    if-ne v2, v0, :cond_4

    const-string v0, "ASC"

    goto :goto_2

    :cond_4
    const-string v0, "DESC"

    :goto_2
    move-object v10, v0

    .line 1255
    .local v10, "orderDirection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1257
    .local v11, "orderBy":Ljava/lang/String;
    move-object v0, p1

    move-object v2, p2

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist setFilterById([J)Landroid/app/DownloadManager$SecQuery;
    .locals 0
    .param p1, "ids"    # [J

    .line 1141
    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    .line 1142
    return-object p0
.end method

.method public blacklist setFilterByStatus(I)Landroid/app/DownloadManager$SecQuery;
    .locals 1
    .param p1, "flags"    # I

    .line 1165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mStatusFlags:Ljava/lang/Integer;

    .line 1166
    return-object p0
.end method

.method public blacklist setFilterByString(Ljava/lang/String;)Landroid/app/DownloadManager$SecQuery;
    .locals 0
    .param p1, "filter"    # Ljava/lang/String;

    .line 1153
    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    .line 1154
    return-object p0
.end method
