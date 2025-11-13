.class public Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MousePointerSettingsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMouseCursorImg:Landroid/widget/ImageView;

.field private mMousePreview:Landroid/view/View;

.field private mPointerColorObserver:Landroid/database/ContentObserver;

.field private mPointerSizeObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$mupdatePointerColor(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->updatePointerColor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePointerSize(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->updatePointerSize()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->TAG:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;

    sget v1, Lcom/android/settings/R$xml;->sec_mouse_pointer_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$3;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getPointerColorList()[I
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->mouse_pointer_color_array:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method private getPointerDrawableList()[I
    .locals 4

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->mouse_pointer_color_drawable_array:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 78
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private getPositionByColor(I)I
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getPointerColorList()[I

    move-result-object p0

    const/4 v0, 0x0

    .line 86
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 87
    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private updatePointerColor()V
    .locals 4

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getPointerColorList()[I

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getPointerDrawableList()[I

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    aget v0, v0, v3

    const-string v3, "mouse_pointer_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 98
    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMouseCursorImg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getPositionByColor(I)I

    move-result p0

    aget p0, v1, p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updatePointerSize()V
    .locals 11

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_pointer_size_step"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 104
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    .line 106
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 107
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMouseCursorImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->mouse_pointer_color_item_content_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-double v5, v3

    int-to-double v7, v0

    sub-int/2addr v0, v2

    int-to-double v2, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v9

    sub-double/2addr v7, v2

    mul-double/2addr v5, v7

    double-to-int v0, v5

    .line 112
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v2, v4

    mul-double/2addr v2, v7

    double-to-int v0, v2

    .line 113
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMouseCursorImg:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0xbc039

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 43
    sget p0, Lcom/android/settings/R$xml;->sec_mouse_pointer_settings:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "mouse_custom_pointer_color"

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->updatePreference()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 60
    sget p2, Lcom/android/settings/R$layout;->sec_mouse_preview_layout:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePreview:Landroid/view/View;

    const/16 p3, 0xf

    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 62
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePreview:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 62
    invoke-virtual {p2, p3, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMousePreview:Landroid/view/View;

    sget p3, Lcom/android/settings/R$id;->mouse_cursor_img:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mMouseCursorImg:Landroid/widget/ImageView;

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->updatePointerColor()V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->updatePointerSize()V

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 125
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerColorObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;-><init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerColorObserver:Landroid/database/ContentObserver;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerSizeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;-><init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerSizeObserver:Landroid/database/ContentObserver;

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_pointer_color"

    .line 145
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerColorObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_pointer_size_step"

    .line 147
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerSizeObserver:Landroid/database/ContentObserver;

    .line 146
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 152
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mPointerSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
