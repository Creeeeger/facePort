.class public final Lcom/android/systemui/screenshot/ScreenshotData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/screenshot/ScreenshotData$Companion;


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final contextUrl:Landroid/net/Uri;

.field public disableCapture:Z

.field public final displayId:I

.field public final insets:Landroid/graphics/Insets;

.field public screenBounds:Landroid/graphics/Rect;

.field public secureLayer:Z

.field public final source:I

.field public taskId:I

.field public topComponent:Landroid/content/ComponentName;

.field public type:I

.field public userHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotData;->Companion:Lcom/android/systemui/screenshot/ScreenshotData$Companion;

    return-void
.end method

.method public constructor <init>(IILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/graphics/Rect;ILandroid/graphics/Insets;Landroid/graphics/Bitmap;ILandroid/net/Uri;ZZ)V
    .locals 0
    .param p1    # I
        .annotation runtime Landroid/view/WindowManager$ScreenshotType;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Landroid/view/WindowManager$ScreenshotSource;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    iput p6, p0, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    iput-object p7, p0, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    iput-object p8, p0, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    iput p9, p0, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    iput-object p10, p0, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    iput-boolean p11, p0, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    iput-boolean p12, p0, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    return-void
.end method

.method public synthetic constructor <init>(IILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/graphics/Rect;ILandroid/graphics/Insets;Landroid/graphics/Bitmap;ILandroid/net/Uri;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p10

    :goto_0
    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v13, v2

    goto :goto_1

    :cond_1
    move/from16 v13, p11

    :goto_1
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    move v14, v2

    goto :goto_2

    :cond_2
    move/from16 v14, p12

    :goto_2
    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v14}, Lcom/android/systemui/screenshot/ScreenshotData;-><init>(IILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/graphics/Rect;ILandroid/graphics/Insets;Landroid/graphics/Bitmap;ILandroid/net/Uri;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/screenshot/ScreenshotData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    iget v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    iget v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    iget v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    iget v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    iget-boolean v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    iget-boolean p1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getPackageNameString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    invoke-virtual {v2}, Landroid/graphics/Insets;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    iget-boolean v9, p0, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    const-string v10, "ScreenshotData(type="

    const-string v11, ", source="

    invoke-static {v0, v10, v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", userHandle="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", contextUrl="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", disableCapture="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", secureLayer="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
