.class public Lcom/samsung/android/util/SemViewUtils;
.super Ljava/lang/Object;
.source "SemViewUtils.java"


# static fields
.field private static final blacklist NOT_INITIALIZED:I = -0x1

.field private static final blacklist NOT_SUPPORTED:I = 0x0

.field private static final blacklist SUPPORTED:I = 0x1

.field private static blacklist TAG_LAYOUT:Ljava/lang/String;

.field private static blacklist sIsTablet:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    const-string v0, "ViewUtils_layout"

    sput-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/util/SemViewUtils;->sIsTablet:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dipToPx(FLandroid/content/res/Resources;)I
    .locals 2
    .param p0, "dip"    # F
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 74
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static blacklist getAttrColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 100
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return v1
.end method

.method public static blacklist getDecorView(Landroid/view/View;)Lcom/android/internal/policy/DecorView;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 84
    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 86
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_0

    .line 89
    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/DecorView;

    return-object v2

    .line 93
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getRoundedCorner(IIII)Landroid/graphics/Path;
    .locals 8
    .param p0, "flag"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "radius"    # I

    .line 161
    add-int v0, p1, p3

    .line 162
    .local v0, "right":I
    move v1, p3

    .line 163
    .local v1, "rx":I
    move v2, p3

    .line 164
    .local v2, "ry":I
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 165
    .local v3, "path":Landroid/graphics/Path;
    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 182
    :sswitch_0
    int-to-float v5, p1

    add-int v6, p2, v2

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 183
    int-to-float v5, v1

    int-to-float v6, v1

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 184
    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_0

    .line 177
    :sswitch_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    int-to-float v5, v2

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 179
    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 180
    goto :goto_0

    .line 172
    :sswitch_2
    int-to-float v5, v0

    add-int v6, p2, p3

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    neg-int v5, v2

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 174
    int-to-float v5, v1

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 175
    goto :goto_0

    .line 167
    :sswitch_3
    int-to-float v5, v0

    int-to-float v6, p2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 169
    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 170
    nop

    .line 187
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 188
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getSmoothLeftRoundedRect(IIIII)Landroid/graphics/Path;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .line 126
    move v0, p4

    .line 127
    .local v0, "rx":I
    move v1, p4

    .line 128
    .local v1, "ry":I
    mul-int/lit8 v2, v0, 0x2

    sub-int v2, p0, v2

    .line 129
    .local v2, "widthMinusCorners":I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p1, v3

    .line 130
    .local v3, "heightMinusCorners":I
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 131
    .local v4, "path":Landroid/graphics/Path;
    add-int v5, p2, v0

    int-to-float v5, v5

    int-to-float v6, p3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 132
    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 133
    int-to-float v5, v3

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 134
    int-to-float v5, v1

    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 135
    add-int v5, v2, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 136
    neg-int v5, p1

    int-to-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 137
    rsub-int/lit8 v5, v2, 0x0

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 138
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 139
    return-object v4
.end method

.method public static blacklist getSmoothRightRoundedRect(IIIII)Landroid/graphics/Path;
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .line 143
    add-int v0, p2, p0

    .line 144
    .local v0, "right":I
    move v1, p4

    .line 145
    .local v1, "rx":I
    move v2, p4

    .line 146
    .local v2, "ry":I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p0, v3

    .line 147
    .local v3, "widthMinusCorners":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, p1, v4

    .line 148
    .local v4, "heightMinusCorners":I
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 149
    .local v5, "path":Landroid/graphics/Path;
    int-to-float v6, v0

    add-int v7, p3, v2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 150
    neg-int v6, v2

    int-to-float v6, v6

    neg-int v7, v1

    int-to-float v7, v7

    neg-int v8, v2

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 151
    neg-int v6, v3

    sub-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 152
    int-to-float v6, p1

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 153
    add-int v6, v3, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 154
    int-to-float v6, v1

    int-to-float v7, v1

    neg-int v8, v2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 155
    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 156
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 157
    return-object v5
.end method

.method public static blacklist getSmoothRoundedRect(IIIII)Landroid/graphics/Path;
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .line 106
    add-int v0, p2, p0

    .line 107
    .local v0, "right":I
    move v1, p4

    .line 108
    .local v1, "rx":I
    move v2, p4

    .line 109
    .local v2, "ry":I
    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p0, v3

    .line 110
    .local v3, "widthMinusCorners":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, p1, v4

    .line 111
    .local v4, "heightMinusCorners":I
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 112
    .local v5, "path":Landroid/graphics/Path;
    int-to-float v6, v0

    add-int v7, p3, v2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 113
    neg-int v6, v2

    int-to-float v6, v6

    neg-int v7, v1

    int-to-float v7, v7

    neg-int v8, v2

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 114
    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 115
    neg-int v6, v1

    int-to-float v6, v6

    neg-int v7, v1

    int-to-float v7, v7

    int-to-float v8, v2

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 116
    int-to-float v6, v4

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 117
    int-to-float v6, v2

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 118
    int-to-float v6, v3

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 119
    int-to-float v6, v1

    int-to-float v7, v1

    neg-int v8, v2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 120
    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 121
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 122
    return-object v5
.end method

.method public static blacklist isDeviceDefaultFamily(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11200b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static blacklist isFoldDevice()Z
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isLightTheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 54
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 55
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static blacklist isNightMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isOpenThemeApplied(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isTablet()Z
    .locals 2

    .line 40
    sget v0, Lcom/samsung/android/util/SemViewUtils;->sIsTablet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 42
    nop

    .line 41
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/samsung/android/util/SemViewUtils;->sIsTablet:I

    .line 44
    :cond_0
    sget v0, Lcom/samsung/android/util/SemViewUtils;->sIsTablet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist isTalkbackEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 79
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x10

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 79
    :goto_1
    return v1
.end method

.method private static blacklist printViewHierarchyInfo(Ljava/util/ArrayList;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "depth"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .line 293
    .local p0, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v0, "indent":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 297
    const-string/jumbo v2, "\u2502   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 300
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 301
    .local v1, "childCount":I
    :goto_1
    const-string/jumbo v2, "\u2514\u2500\u2500 "

    const/16 v3, 0x40

    if-lez v1, :cond_4

    .line 302
    if-ge p3, v1, :cond_2

    .line 303
    sget-object v2, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u251c\u2500\u2500 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 306
    :cond_2
    sget-object v4, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 310
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 311
    .local v3, "child":Landroid/view/View;
    add-int/lit8 v4, p2, 0x1

    invoke-static {p0, v3, v4, v2}, Lcom/samsung/android/util/SemViewUtils;->printViewHierarchyInfo(Ljava/util/ArrayList;Landroid/view/View;II)V

    .line 309
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    :cond_3
    goto :goto_4

    .line 314
    :cond_4
    sget-object v4, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_4
    return-void
.end method

.method public static blacklist printViewLayoutInfo(Landroid/view/View;)V
    .locals 11
    .param p0, "root"    # Landroid/view/View;

    .line 219
    :try_start_0
    sget-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    const-string v1, "--------------View hierarchy info-----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    const-string v1, "--------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez p0, :cond_0

    .line 224
    sget-object v0, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    const-string v1, "Unable to get layout information because root is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Lcom/samsung/android/util/SemViewUtils;->printViewHierarchyInfo(Ljava/util/ArrayList;Landroid/view/View;II)V

    .line 231
    sget-object v2, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    const-string v3, "View properties:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 233
    .local v2, "location":[I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 234
    .local v4, "v":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "+ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 236
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const/4 v6, 0x0

    .line 238
    .local v6, "entry":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    .local v7, "id":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const/high16 v8, -0x1000000

    and-int/2addr v8, v7

    if-nez v8, :cond_1

    const v8, 0xffffff

    and-int/2addr v8, v7

    if-nez v8, :cond_2

    .line 241
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 242
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v9

    .line 245
    .end local v8    # "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 243
    :catch_0
    move-exception v8

    .line 244
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v6, 0x0

    .line 247
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 248
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " id/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_3
    const-string v8, "\n Accessibility: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " contentDescription="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " importantForAccessibility="

    .line 251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "yes"

    goto :goto_2

    :cond_4
    const-string v9, "no"

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v8, "\n Drawing: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " alpha="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " elevation="

    .line 253
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getElevation()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x="

    .line 254
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " z="

    .line 255
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isOpaque="

    .line 256
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isOpaque()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    const-string v8, "\n Focus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hasFocus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isFocusable="

    .line 258
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isFocused="

    .line 259
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 261
    const-string v8, "\n Layout: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " width="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height="

    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " locationOnScreen_x="

    .line 263
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " locationOnScreen_y="

    .line 264
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " left="

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " right="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " top="

    .line 266
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bottom="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string v8, "\n Padding: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingLeft="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingRight="

    .line 268
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingTop="

    .line 269
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingBottom="

    .line 270
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingStart="

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paddingEnd="

    .line 272
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v8, "\n Miscellaneous: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fitsSystemWindows="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " visibility="

    .line 274
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isClickable="

    .line 275
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isEnabled="

    .line 276
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    instance-of v8, v4, Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 278
    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    .line 279
    .local v8, "tv":Landroid/widget/TextView;
    const-string v9, "\n Text: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " scaledTextSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " textSize="

    .line 280
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " typefaceStyle="

    .line 281
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " text="

    .line 282
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 284
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_5
    sget-object v8, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 285
    nop

    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "entry":Ljava/lang/String;
    .end local v7    # "id":I
    goto/16 :goto_0

    .line 288
    .end local v0    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "location":[I
    :cond_6
    goto :goto_3

    .line 286
    :catch_1
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/util/SemViewUtils;->TAG_LAYOUT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get view hierarchy information. ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
