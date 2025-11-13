.class public abstract Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/ComparatorFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final getAppSortComparator(IZ)Ljava/util/Comparator;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getSortByComparator() ] sortByType("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is not supported"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ComparatorFactory"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/DefaultComparator;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/DefaultComparator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/LastLaunchTimeComparator;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/LastLaunchTimeComparator;-><init>(Z)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/AppNameComparator;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/AppNameComparator;-><init>(Z)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/AppSizeComparator;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/AppSizeComparator;-><init>(Z)V

    :goto_0
    return-object p0
.end method
