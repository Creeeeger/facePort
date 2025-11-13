.class public final Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/LastLaunchTimeComparator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u00032\u00020\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/LastLaunchTimeComparator;",
        "Ljava/util/Comparator;",
        "Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;",
        "Lkotlin/Comparator;",
        "Ljava/io/Serializable;",
        "",
        "isAscending",
        "Z",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final isAscending:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/LastLaunchTimeComparator;->isAscending:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    check-cast p2, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    const-string/jumbo v0, "o1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "o2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->getLastLaunchTime()J

    move-result-wide v2

    check-cast p2, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    invoke-virtual {p2}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->getLastLaunchTime()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/LastLaunchTimeComparator;->isAscending:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    neg-int p0, v1

    move v1, p0

    goto :goto_1

    :cond_3
    const-string p0, "LastLaunchTimeComparator"

    const-string p1, "compare() ] AppInfo type is incorrect."

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method
