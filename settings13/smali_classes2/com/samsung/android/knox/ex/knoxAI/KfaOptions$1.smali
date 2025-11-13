.class Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;
.super Ljava/lang/Object;
.source "KfaOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;
    .locals 0

    .line 376
    new-instance p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 373
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;
    .locals 0

    .line 379
    new-array p0, p1, [Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 373
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;->newArray(I)[Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;

    move-result-object p0

    return-object p0
.end method
