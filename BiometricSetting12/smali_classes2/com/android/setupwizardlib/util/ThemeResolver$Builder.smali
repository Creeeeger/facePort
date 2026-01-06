.class public Lcom/android/setupwizardlib/util/ThemeResolver$Builder;
.super Ljava/lang/Object;
.source "ThemeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/ThemeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private defaultTheme:I

.field private oldestSupportedTheme:Ljava/lang/String;

.field private useDayNight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_DayNight:I

    iput v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->defaultTheme:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->useDayNight:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/setupwizardlib/util/ThemeResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_DayNight:I

    iput v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->defaultTheme:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->useDayNight:Z

    invoke-static {p1}, Lcom/android/setupwizardlib/util/ThemeResolver;->access$000(Lcom/android/setupwizardlib/util/ThemeResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->defaultTheme:I

    invoke-static {p1}, Lcom/android/setupwizardlib/util/ThemeResolver;->access$100(Lcom/android/setupwizardlib/util/ThemeResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/setupwizardlib/util/ThemeResolver;->access$200(Lcom/android/setupwizardlib/util/ThemeResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->useDayNight:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/android/setupwizardlib/util/ThemeResolver;
    .locals 5

    new-instance v0, Lcom/android/setupwizardlib/util/ThemeResolver;

    iget v1, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->defaultTheme:I

    iget-object v2, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->useDayNight:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/setupwizardlib/util/ThemeResolver;-><init>(ILjava/lang/String;ZLcom/android/setupwizardlib/util/ThemeResolver$1;)V

    return-object v0
.end method

.method public setDefaultTheme(I)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->defaultTheme:I

    return-object p0
.end method

.method public setOldestSupportedTheme(Ljava/lang/String;)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    return-object p0
.end method

.method public setUseDayNight(Z)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->useDayNight:Z

    return-object p0
.end method
