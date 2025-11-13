.class public final Lcom/android/systemui/navigationbar/util/OneHandModeUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

.field public static oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;


# instance fields
.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;-><init>(IIF)V

    sput-object v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final getRegionSamplingBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetX:I

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetY:I

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->scale:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    int-to-float v1, v1

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v1

    float-to-int p0, p1

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    return-object v2
.end method
