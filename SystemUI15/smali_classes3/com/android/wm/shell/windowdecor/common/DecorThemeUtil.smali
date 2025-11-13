.class public final Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final darkColors:Landroidx/compose/material3/ColorScheme;

.field public final lightColors:Landroidx/compose/material3/ColorScheme;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicLightColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;->lightColors:Landroidx/compose/material3/ColorScheme;

    invoke-static {p1}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;->darkColors:Landroidx/compose/material3/ColorScheme;

    return-void
.end method


# virtual methods
.method public final getAppTheme(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/windowdecor/common/Theme;
    .locals 2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->luminance()F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/windowdecor/common/Theme;->DARK:Lcom/android/wm/shell/windowdecor/common/Theme;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/wm/shell/windowdecor/common/Theme;->LIGHT:Lcom/android/wm/shell/windowdecor/common/Theme;

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/android/wm/shell/windowdecor/common/Theme;->DARK:Lcom/android/wm/shell/windowdecor/common/Theme;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/wm/shell/windowdecor/common/Theme;->LIGHT:Lcom/android/wm/shell/windowdecor/common/Theme;

    :goto_1
    return-object p0
.end method
