.class public final Lcom/android/systemui/battery/unified/BatteryDrawableState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/battery/unified/BatteryDrawableState$Companion;

.field public static final DefaultInitialState:Lcom/android/systemui/battery/unified/BatteryDrawableState;


# instance fields
.field public final attribution:Landroid/graphics/drawable/Drawable;

.field public final color:Lcom/android/systemui/battery/unified/ColorProfile;

.field public final level:I

.field public final showPercent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/battery/unified/BatteryDrawableState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/battery/unified/BatteryDrawableState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->Companion:Lcom/android/systemui/battery/unified/BatteryDrawableState$Companion;

    new-instance v0, Lcom/android/systemui/battery/unified/BatteryDrawableState;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/battery/unified/BatteryDrawableState;-><init>(IZLcom/android/systemui/battery/unified/ColorProfile;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->DefaultInitialState:Lcom/android/systemui/battery/unified/BatteryDrawableState;

    return-void
.end method

.method public constructor <init>(IZLcom/android/systemui/battery/unified/ColorProfile;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->level:I

    iput-boolean p2, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->showPercent:Z

    iput-object p3, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->color:Lcom/android/systemui/battery/unified/ColorProfile;

    iput-object p4, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->attribution:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(IZLcom/android/systemui/battery/unified/ColorProfile;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    sget-object p3, Lcom/android/systemui/battery/unified/ColorProfile;->None:Lcom/android/systemui/battery/unified/ColorProfile;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/battery/unified/BatteryDrawableState;-><init>(IZLcom/android/systemui/battery/unified/ColorProfile;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/battery/unified/BatteryDrawableState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/battery/unified/BatteryDrawableState;

    iget v1, p1, Lcom/android/systemui/battery/unified/BatteryDrawableState;->level:I

    iget v3, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->level:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->showPercent:Z

    iget-boolean v3, p1, Lcom/android/systemui/battery/unified/BatteryDrawableState;->showPercent:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->color:Lcom/android/systemui/battery/unified/ColorProfile;

    iget-object v3, p1, Lcom/android/systemui/battery/unified/BatteryDrawableState;->color:Lcom/android/systemui/battery/unified/ColorProfile;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->attribution:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/android/systemui/battery/unified/BatteryDrawableState;->attribution:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->level:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->showPercent:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->color:Lcom/android/systemui/battery/unified/ColorProfile;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->attribution:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->attribution:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BatteryDrawableState(level="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showPercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->showPercent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/battery/unified/BatteryDrawableState;->color:Lcom/android/systemui/battery/unified/ColorProfile;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", attribution="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
