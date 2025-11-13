.class public final Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;
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
    name = "Warning"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsItemResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsItemResult.kt\ncom/samsung/android/gtscell/data/result/GtsItemResult$Warning\n*L\n1#1,147:1\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;


# instance fields
.field private final itemKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pendingIntent:Landroid/app/PendingIntent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->CREATOR:Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning$CREATOR;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string/jumbo v1, "parcel.readString()!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;->Companion:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason$Companion;->toEnum(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 82
    :goto_0
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "itemKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->itemKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    iput-object p3, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 79
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;ILjava/lang/Object;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->getItemKey()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->copy(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->getItemKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final component2()Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "itemKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "reason"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;Ljava/lang/String;Landroid/app/PendingIntent;)V

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

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

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

    .line 76
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->itemKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final getReason()Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->getItemKey()Ljava/lang/String;

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

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 79
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning(itemKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

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

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->getItemKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->reason:Lcom/samsung/android/gtscell/data/result/GtsItemResult$WarningReason;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/result/GtsItemResult$Warning;->pendingIntent:Landroid/app/PendingIntent;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
