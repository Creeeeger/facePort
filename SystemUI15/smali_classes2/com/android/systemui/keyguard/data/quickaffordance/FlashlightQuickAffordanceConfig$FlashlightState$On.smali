.class public final Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$FlashlightState$On;
.super Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$FlashlightState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$FlashlightState$On;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$FlashlightState$On;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$FlashlightState$On;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$FlashlightState$On;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$FlashlightState$On;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$FlashlightState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final toLockScreenState()Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState;
    .locals 6

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const v1, 0x7f0807a3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string p0, "navibar"

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->convertTaskDrawable(Landroid/graphics/drawable/Drawable;ZZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const v1, 0x7f130efd

    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    sget-object p0, Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Active;->INSTANCE:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState$Active;

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;)V

    return-object v0
.end method
