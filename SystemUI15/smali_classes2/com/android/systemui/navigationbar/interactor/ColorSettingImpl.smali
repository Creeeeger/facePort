.class public final Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;


# instance fields
.field public final context:Landroid/content/Context;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final addColorCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->context:Landroid/content/Context;

    const v0, 0x7f0601eb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarColor(I)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarCurrentColor(I)V

    return-void
.end method

.method public final getNavigationBarColor()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->context:Landroid/content/Context;

    const v0, 0x7f0601ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final setNavigationBarColor(I)V
    .locals 0

    return-void
.end method
