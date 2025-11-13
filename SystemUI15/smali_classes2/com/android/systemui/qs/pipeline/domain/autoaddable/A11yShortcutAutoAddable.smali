.class public final Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/domain/model/AutoAddable;


# instance fields
.field public final a11yQsShortcutsRepository:Lcom/android/systemui/accessibility/data/repository/AccessibilityQsShortcutsRepository;

.field public final autoAddTracking:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final componentName:Landroid/content/ComponentName;

.field public final description:Ljava/lang/String;

.field public final spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/data/repository/AccessibilityQsShortcutsRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/qs/pipeline/shared/TileSpec;Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->componentName:Landroid/content/ComponentName;

    sget-object p1, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "A11yShortcutAutoAddableSetting: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;

    iget-object v0, p1, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->componentName:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->componentName:Landroid/content/ComponentName;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;->description:Ljava/lang/String;

    return-object p0
.end method
