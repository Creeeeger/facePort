.class public Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplaySynchronizer"
.end annotation


# instance fields
.field private final blacklist mDisplayId:I

.field private final blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public blacklist mPreferredSettingValue:F

.field private final blacklist mScreenBrightnessIntGetter:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScreenBrightnessIntSetter:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ILandroid/hardware/display/DisplayManager;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/display/DisplayManager;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayId:I

    iput-object p2, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p3, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mScreenBrightnessIntGetter:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mScreenBrightnessIntSetter:Ljava/util/function/Consumer;

    return-void
.end method

.method private blacklist checkFloatTypeChanged(III)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-ne p1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    if-ne p2, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-ne p3, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v4, "BrightnessSynchronizer"

    const-string/jumbo v5, "onChange: both changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-ne p1, v3, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0
.end method

.method private static blacklist constrainBrightnessInt(I)I
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private blacklist syncBrightnessValue(IFZ)V
    .locals 5

    const-string v0, " -> "

    const-string v1, "BrightnessSynchronizer"

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    iput p2, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange: last float changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mScreenBrightnessIntSetter:Ljava/util/function/Consumer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange: last int changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->setScreenBrightnessFloat(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method blacklist getScreenBrightnessFloat()F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v0

    return v0
.end method

.method blacklist setScreenBrightnessFloat(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    return-void
.end method

.method public blacklist updateScreenBrightness(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mScreenBrightnessIntGetter:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->constrainBrightnessInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->getScreenBrightnessFloat()F

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScreenBrightness: displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPreferredSettingValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") currentBrightnessInt="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " currentBrightnessIntFromFloat="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessSynchronizer"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    iget v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "synced: mPreferredSettingValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " currentBrightnessFloat: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->mPreferredSettingValue:F

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->checkFloatTypeChanged(III)Z

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/display/BrightnessSynchronizer$DisplaySynchronizer;->syncBrightnessValue(IFZ)V

    return-void
.end method
