.class public final Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;",
        "",
        "()V",
        "ENLARGEABLE_THUMBNAIL_SIZE",
        "",
        "THUMBNAIL_SIZE",
        "value",
        "enlargeableThumbnailSize",
        "getEnlargeableThumbnailSize",
        "()I",
        "setEnlargeableThumbnailSize",
        "(I)V",
        "thumbnailSize",
        "getThumbnailSize",
        "setThumbnailSize",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnlargeableThumbnailSize()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->access$getEnlargeableThumbnailSize$cp()I

    move-result p0

    return p0
.end method

.method public final getThumbnailSize()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->access$getThumbnailSize$cp()I

    move-result p0

    return p0
.end method

.method public final setEnlargeableThumbnailSize(I)V
    .locals 0

    const/16 p0, 0x1f4

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->access$setEnlargeableThumbnailSize$cp(I)V

    return-void
.end method

.method public final setThumbnailSize(I)V
    .locals 0

    const/16 p0, 0xfa

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->access$setThumbnailSize$cp(I)V

    return-void
.end method
