.class public Lcom/samsung/android/fontutil/TypefaceFinder$TypefaceSortByName;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fontutil/TypefaceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypefaceSortByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/fontutil/SemTypeface;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/samsung/android/fontutil/SemTypeface;Lcom/samsung/android/fontutil/SemTypeface;)I
    .locals 2
    .param p1, "o1"    # Lcom/samsung/android/fontutil/SemTypeface;
    .param p2, "o2"    # Lcom/samsung/android/fontutil/SemTypeface;

    .line 301
    invoke-virtual {p1}, Lcom/samsung/android/fontutil/SemTypeface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/fontutil/SemTypeface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 298
    check-cast p1, Lcom/samsung/android/fontutil/SemTypeface;

    check-cast p2, Lcom/samsung/android/fontutil/SemTypeface;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/fontutil/TypefaceFinder$TypefaceSortByName;->compare(Lcom/samsung/android/fontutil/SemTypeface;Lcom/samsung/android/fontutil/SemTypeface;)I

    move-result p1

    return p1
.end method
