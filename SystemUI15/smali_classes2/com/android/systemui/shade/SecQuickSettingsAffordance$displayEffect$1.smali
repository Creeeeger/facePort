.class public final Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animationState:Lcom/android/systemui/util/AnimHelper$AnimationState;

.field public final synthetic $increaseAffordanceCount:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;->$animationState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iput-object p3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;->$increaseAffordanceCount:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;->$animationState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    sget-object v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-static {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->access$hiding(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;->$increaseAffordanceCount:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showing(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
