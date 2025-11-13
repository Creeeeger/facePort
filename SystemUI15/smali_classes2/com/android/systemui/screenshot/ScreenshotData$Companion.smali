.class public final Lcom/android/systemui/screenshot/ScreenshotData$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final forTesting()Lcom/android/systemui/screenshot/ScreenshotData;
    .locals 15

    new-instance p0, Lcom/android/systemui/screenshot/ScreenshotData;

    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/16 v13, 0xe00

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/screenshot/ScreenshotData;-><init>(IILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/graphics/Rect;ILandroid/graphics/Insets;Landroid/graphics/Bitmap;ILandroid/net/Uri;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
