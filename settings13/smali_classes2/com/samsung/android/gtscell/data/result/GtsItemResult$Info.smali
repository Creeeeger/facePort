.class public final Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;
.super Lcom/samsung/android/gtscell/data/result/GtsItemResult;
.source "GtsItemResult.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/result/GtsItemResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info$Creator;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final itemKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingIntent:Landroid/app/PendingIntent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info$Creator;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "itemKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->itemKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ILjava/lang/Object;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->getItemKey()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->copy(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->getItemKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "itemKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "message"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getItemKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->itemKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->getItemKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 71
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info(itemKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->itemKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Info;->pendingIntent:Landroid/app/PendingIntent;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
