.class public final Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $newApn:Z

.field public final synthetic $uriInit:Landroid/net/Uri;

.field public final synthetic $values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(ZLandroid/net/Uri;Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$newApn:Z

    iput-object p2, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$uriInit:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$newApn:Z

    const-string v1, " "

    const-string v2, "ApnRepository"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$uriInit:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$values:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding an new APN to the database "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$uriInit:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$uriInit:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t add a new apn to database "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$uriInit:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$values:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating an existing APN to the database "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$uriInit:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnRepositoryKt$updateApnDataToDatabase$1;->$values:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
