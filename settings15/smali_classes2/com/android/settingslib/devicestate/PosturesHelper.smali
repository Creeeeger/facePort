.class public final Lcom/android/settingslib/devicestate/PosturesHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final foldedDeviceStates:[I

.field public final halfFoldedDeviceStates:[I

.field public final rearDisplayDeviceStates:[I

.field public final unfoldedDeviceStates:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string v1, "getIntArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/devicestate/PosturesHelper;->foldedDeviceStates:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x107010a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/devicestate/PosturesHelper;->halfFoldedDeviceStates:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x107013c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/devicestate/PosturesHelper;->unfoldedDeviceStates:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070142

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/devicestate/PosturesHelper;->rearDisplayDeviceStates:[I

    return-void
.end method


# virtual methods
.method public final deviceStateToPosture(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/devicestate/PosturesHelper;->foldedDeviceStates:[I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/devicestate/PosturesHelper;->halfFoldedDeviceStates:[I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/devicestate/PosturesHelper;->unfoldedDeviceStates:[I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/devicestate/PosturesHelper;->rearDisplayDeviceStates:[I

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
