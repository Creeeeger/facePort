.class public final Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;
.super Ljava/lang/Object;
.source "RemoteCallback.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/gtscell/RemoteCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/gtscell/RemoteCallback;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance p0, Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/RemoteCallback;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/gtscell/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/gtscell/RemoteCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    new-array p0, p1, [Lcom/samsung/android/gtscell/RemoteCallback;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;->newArray(I)[Lcom/samsung/android/gtscell/RemoteCallback;

    move-result-object p0

    return-object p0
.end method
