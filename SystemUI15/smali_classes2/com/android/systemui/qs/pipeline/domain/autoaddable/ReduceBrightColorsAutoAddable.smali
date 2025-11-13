.class public final Lcom/android/systemui/qs/pipeline/domain/autoaddable/ReduceBrightColorsAutoAddable;
.super Lcom/android/systemui/qs/pipeline/domain/autoaddable/CallbackControllerAutoAddable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final available:Z

.field public final description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/ReduceBrightColorsController;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/pipeline/domain/autoaddable/CallbackControllerAutoAddable;-><init>(Lcom/android/systemui/statusbar/policy/CallbackController;)V

    iput-boolean p2, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/ReduceBrightColorsAutoAddable;->available:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/domain/autoaddable/ReduceBrightColorsAutoAddable;->getAutoAddTracking()Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ReduceBrightColorsAutoAddable ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/ReduceBrightColorsAutoAddable;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAutoAddTracking()Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking;
    .locals 1

    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Disabled;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Disabled;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/ReduceBrightColorsAutoAddable;->available:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/android/systemui/qs/pipeline/domain/autoaddable/CallbackControllerAutoAddable;->getAutoAddTracking()Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Disabled;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Disabled;

    :goto_0
    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/ReduceBrightColorsAutoAddable;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpec()Lcom/android/systemui/qs/pipeline/shared/TileSpec;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ReduceBrightColors"

    invoke-static {p0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object p0

    return-object p0
.end method
