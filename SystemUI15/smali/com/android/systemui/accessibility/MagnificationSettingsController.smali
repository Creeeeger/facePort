.class public final Lcom/android/systemui/accessibility/MagnificationSettingsController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# static fields
.field public static final A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;


# instance fields
.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public final mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

.field public final mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

.field final mWindowMagnificationSettingsCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Range;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/accessibility/MagnificationSettingsController;-><init>(Landroid/content/Context;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;-><init>(Lcom/android/systemui/accessibility/MagnificationSettingsController;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettingsCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/16 v2, 0x7e8

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mContext:Landroid/content/Context;

    const v1, 0x7f140600

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-direct {p3, p1, v0, p2, p4}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/util/settings/SecureSettings;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v0, p1, 0x200

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_3

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_2

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_4

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->hideSettingPanel(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f1300d8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->hideSettingPanel(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->inflateView()V

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->showSettingPanel(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/MagnificationSettingsController;->onConfigurationChanged(I)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
