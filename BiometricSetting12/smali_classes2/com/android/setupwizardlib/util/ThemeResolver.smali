.class public Lcom/android/setupwizardlib/util/ThemeResolver;
.super Ljava/lang/Object;
.source "ThemeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/util/ThemeResolver$Builder;
    }
.end annotation


# static fields
.field private static defaultResolver:Lcom/android/setupwizardlib/util/ThemeResolver;


# instance fields
.field private final defaultTheme:I

.field private final oldestSupportedTheme:Ljava/lang/String;

.field private final useDayNight:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->defaultTheme:I

    iput-object p2, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->useDayNight:Z

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ZLcom/android/setupwizardlib/util/ThemeResolver$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/util/ThemeResolver;-><init>(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/util/ThemeResolver;)I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->defaultTheme:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/setupwizardlib/util/ThemeResolver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/setupwizardlib/util/ThemeResolver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->useDayNight:Z

    return v0
.end method

.method private static compareThemes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/android/setupwizardlib/util/ThemeResolver;->getThemeVersion(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/android/setupwizardlib/util/ThemeResolver;->getThemeVersion(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private static getDayNightThemeRes(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "glif_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "material"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "glif_v3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "glif_v2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "glif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "glif_v3_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_6
    const-string v2, "material_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "glif_v2_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeMaterial_DayNight:I

    return v0

    :pswitch_1
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_DayNight:I

    return v0

    :pswitch_2
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlifV2_DayNight:I

    return v0

    :pswitch_3
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlifV3_DayNight:I

    return v0

    :cond_1
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x4bb9bc02 -> :sswitch_6
        -0x49f8f44f -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefault()Lcom/android/setupwizardlib/util/ThemeResolver;
    .locals 2

    sget-object v0, Lcom/android/setupwizardlib/util/ThemeResolver;->defaultResolver:Lcom/android/setupwizardlib/util/ThemeResolver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    invoke-direct {v0}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;-><init>()V

    sget v1, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_DayNight:I

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->build()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v0

    sput-object v0, Lcom/android/setupwizardlib/util/ThemeResolver;->defaultResolver:Lcom/android/setupwizardlib/util/ThemeResolver;

    :cond_0
    sget-object v0, Lcom/android/setupwizardlib/util/ThemeResolver;->defaultResolver:Lcom/android/setupwizardlib/util/ThemeResolver;

    return-object v0
.end method

.method private static getThemeRes(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "glif_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "material"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "glif_v3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "glif_v2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "glif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "glif_v3_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_6
    const-string v2, "material_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "glif_v2_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeMaterial:I

    return v0

    :pswitch_1
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeMaterial_Light:I

    return v0

    :pswitch_2
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif:I

    return v0

    :pswitch_3
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_Light:I

    return v0

    :pswitch_4
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlifV2:I

    return v0

    :pswitch_5
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlifV2_Light:I

    return v0

    :pswitch_6
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlifV3:I

    return v0

    :pswitch_7
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlifV3_Light:I

    return v0

    :cond_1
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x4bb9bc02 -> :sswitch_6
        -0x49f8f44f -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getThemeVersion(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "glif_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "glif_v3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "glif_v2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "glif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "glif_v3_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "material_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "glif_v2_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    :pswitch_2
    return v4

    :pswitch_3
    return v5

    :cond_1
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x4bb9bc02 -> :sswitch_6
        -0x49f8f44f -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resolve(Ljava/lang/String;Z)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->useDayNight:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/setupwizardlib/util/ThemeResolver;->getDayNightThemeRes(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/setupwizardlib/util/ThemeResolver;->getThemeRes(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->defaultTheme:I

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {p1, v1}, Lcom/android/setupwizardlib/util/ThemeResolver;->compareThemes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/setupwizardlib/util/ThemeResolver;->defaultTheme:I

    return v1

    :cond_2
    return v0
.end method

.method public static setDefault(Lcom/android/setupwizardlib/util/ThemeResolver;)V
    .locals 0

    sput-object p0, Lcom/android/setupwizardlib/util/ThemeResolver;->defaultResolver:Lcom/android/setupwizardlib/util/ThemeResolver;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/util/ThemeResolver;->resolve(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public resolve(Landroid/content/Intent;)I
    .locals 2

    nop

    const-string v0, "theme"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isSetupWizardIntent(Landroid/content/Intent;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resolve(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
