.class public Landroidx/constraintlayout/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x8

.field public static final STRENGTH_BARRIER:I = 0x6

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_FIXED:I = 0x7

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I

.field private static uniqueConstantId:I

.field private static uniqueErrorId:I

.field private static uniqueId:I

.field private static uniqueSlackId:I

.field private static uniqueUnrestrictedId:I


# instance fields
.field public computedValue:F

.field definitionId:I

.field goalStrengthVector:[F

.field public id:I

.field public inGoal:Z

.field mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field public usageInRowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueSlackId:I

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueUnrestrictedId:I

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueConstantId:I

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueId:I

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/16 v1, 0x8

    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    new-array v1, v1, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/16 v1, 0x8

    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    new-array v1, v1, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method private static getUniqueName(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type:[I

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/SolverVariable$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/SolverVariable$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueSlackId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueSlackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueConstantId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueConstantId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueUnrestrictedId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/solver/SolverVariable;->uniqueUnrestrictedId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static increaseErrorId()V
    .locals 1

    sget v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    return-void
.end method


# virtual methods
.method public final addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    return-void
.end method

.method clearStrengths()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    move v2, v1

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    iput v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    array-length v4, v4

    if-ge v3, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    aget v5, v4, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    aget v5, v4, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    aget v5, v4, v3

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    :cond_2
    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (-)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v2, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (*)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, v2}, Landroidx/constraintlayout/solver/ArrayRow;->updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    return-void
.end method
