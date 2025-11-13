.class public final Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
.super Ljava/lang/Object;
.source "InputMethodInfoSafeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputMethodInfoSafeList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBuffer:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->mBuffer:[B

    return-void
.end method

.method synthetic constructor blacklist <init>([BLcom/android/internal/inputmethod/InputMethodInfoSafeList-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;-><init>([B)V

    return-void
.end method

.method public static blacklist create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Lcom/android/internal/inputmethod/InputMethodInfoSafeList;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->toArray(Ljava/util/List;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->marshall([Landroid/view/inputmethod/InputMethodInfo;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;-><init>([B)V

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->empty()Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist empty()Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 2

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;-><init>([B)V

    return-object v0
.end method

.method public static blacklist extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/inputmethod/InputMethodInfoSafeList;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->mBuffer:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->mBuffer:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->unmarshall([B)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private static blacklist marshall([Landroid/view/inputmethod/InputMethodInfo;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v1
.end method

.method private static blacklist toArray(Ljava/util/List;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)[",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodInfo;

    return-object v0

    :cond_0
    new-array v0, v0, [Landroid/view/inputmethod/InputMethodInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method private static blacklist unmarshall([B)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->mBuffer:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    return-void
.end method
