.class public final Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;
.super Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iput-object p4, p0, Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    return-void
.end method


# virtual methods
.method public final createInstance(Landroid/view/Display;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;->mContext:Landroid/content/Context;

    const/16 v1, 0x7f0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f140600

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/systemui/accessibility/MagnificationSettingsController;-><init>(Landroid/content/Context;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;Lcom/android/systemui/util/settings/SecureSettings;)V

    return-object v0
.end method
