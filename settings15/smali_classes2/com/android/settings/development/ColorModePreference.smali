.class public Lcom/android/settings/development/ColorModePreference;
.super Landroidx/preference/TwoStatePreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public mCurrentIndex:I

.field public mDescriptions:Ljava/util/List;

.field public mDisplay:Landroid/view/Display;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030096

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v2, 0x7f030097

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030095

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    new-instance v5, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v4, v5, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->colorMode:I

    aget-object v4, v2, v3

    aget-object v4, p0, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final persistBoolean(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    iget v1, p1, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->colorMode:I

    invoke-virtual {v0, v1}, Landroid/view/Display;->requestColorMode(I)V

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final updateCurrentAndSupported()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference;->getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getColorMode()I

    move-result v0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    iget v3, v3, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->colorMode:I

    if-ne v3, v0, :cond_0

    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
