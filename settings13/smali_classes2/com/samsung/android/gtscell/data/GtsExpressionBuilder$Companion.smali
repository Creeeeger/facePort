.class public final Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;
.super Ljava/lang/Object;
.source "GtsExpressionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsExpressionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsExpressionBuilder.kt\ncom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion\n*L\n1#1,371:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnlargeableThumbnailSize()I
    .locals 0

    .line 27
    invoke-static {}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->access$getEnlargeableThumbnailSize$cp()I

    move-result p0

    return p0
.end method

.method public final getThumbnailSize()I
    .locals 0

    .line 23
    invoke-static {}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->access$getThumbnailSize$cp()I

    move-result p0

    return p0
.end method

.method public final setEnlargeableThumbnailSize(I)V
    .locals 0

    const/16 p0, 0x1f4

    .line 29
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->access$setEnlargeableThumbnailSize$cp(I)V

    return-void
.end method

.method public final setThumbnailSize(I)V
    .locals 0

    const/16 p0, 0xfa

    .line 25
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->access$setThumbnailSize$cp(I)V

    return-void
.end method
