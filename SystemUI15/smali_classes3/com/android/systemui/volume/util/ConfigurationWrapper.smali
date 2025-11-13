.class public final Lcom/android/systemui/volume/util/ConfigurationWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public density:I

.field public displayType:I

.field public fontScale:F

.field public locale:Ljava/util/Locale;

.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public nightMode:Z

.field public orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/util/ConfigurationWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/ConfigurationWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependency;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->context:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->log:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-static {v0}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->nightMode:Z

    sget-object v1, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->orientation:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->density:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->fontScale:F

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->displayType:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConfigurationWrapper"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isDensityOrFontScaleChanged()Z
    .locals 7

    sget-object v0, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    iget-object v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "this="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " / density="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", fontScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", nightMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->log:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v6, "ConfigurationWrapper"

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->density:I

    if-ne v0, v4, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->fontScale:F

    cmpg-float v4, v1, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->locale:Ljava/util/Locale;

    if-ne v2, v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->nightMode:Z

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string v4, "density or font or scale has been changed!"

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->density:I

    iput v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->fontScale:F

    iput-object v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->locale:Ljava/util/Locale;

    iput-boolean v3, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->nightMode:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final isDisplayTypeChanged()Z
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    iget-object v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->displayType:I

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->displayType:I

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isOrientationChanged()Z
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    iget-object v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->orientation:I

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->orientation:I

    const-string v0, "orientation has been changed!"

    iget-object p0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->log:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "ConfigurationWrapper"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->nightMode:Z

    iget v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->orientation:I

    iget v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->density:I

    iget v3, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->fontScale:F

    iget-object v4, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->locale:Ljava/util/Locale;

    iget p0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->displayType:I

    const-string v5, "[ nightMode="

    const-string v6, ", orientation="

    const-string v7, ", density="

    invoke-static {v5, v1, v6, v0, v7}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
