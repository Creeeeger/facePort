.class public Landroidx/constraintlayout/solver/state/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/state/State$Chain;,
        Landroidx/constraintlayout/solver/state/State$Helper;,
        Landroidx/constraintlayout/solver/state/State$Direction;,
        Landroidx/constraintlayout/solver/state/State$Constraint;
    }
.end annotation


# static fields
.field static final CONSTRAINT_RATIO:I = 0x2

.field static final CONSTRAINT_SPREAD:I = 0x0

.field static final CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT:Ljava/lang/Integer;

.field static final UNKNOWN:I = -0x1


# instance fields
.field protected mHelperReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/solver/state/HelperReference;",
            ">;"
        }
    .end annotation
.end field

.field public final mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

.field protected mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/solver/state/Reference;",
            ">;"
        }
    .end annotation
.end field

.field private numHelpers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    new-instance v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    sget-object v2, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createHelperKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__HELPER_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/solver/state/Dimension;->apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/solver/state/Dimension;->apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/HelperReference;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/state/Reference;

    if-nez v4, :cond_0

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    :cond_0
    invoke-interface {v4, v3}, Landroidx/constraintlayout/solver/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/Reference;

    iget-object v3, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    if-eq v2, v3, :cond_4

    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    instance-of v4, v2, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    if-eqz v4, :cond_3

    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->apply()V

    :cond_3
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_2

    :cond_4
    invoke-interface {v2, p1}, Landroidx/constraintlayout/solver/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :goto_2
    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/HelperReference;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, v2, Landroidx/constraintlayout/solver/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/state/Reference;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v7

    invoke-interface {v6}, Landroidx/constraintlayout/solver/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->apply()V

    :cond_7
    goto :goto_3

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/Reference;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->apply()V

    goto :goto_5

    :cond_9
    return-void
.end method

.method public barrier(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Direction;)Landroidx/constraintlayout/solver/state/helpers/BarrierReference;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/solver/state/State$Direction;)V

    return-object v0
.end method

.method public varargs centerHorizontally([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    return-object v0
.end method

.method public varargs centerVertically([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    return-object v0
.end method

.method public constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/state/Reference;->setKey(Ljava/lang/Object;)V

    :cond_0
    instance-of v1, v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/state/ConstraintReference;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public convertDimension(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    return-object v0
.end method

.method public directMapping()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->setOrientation(I)V

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->setKey(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    return-object v1
.end method

.method public height(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;

    move-result-object v0

    return-object v0
.end method

.method public helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;
    .locals 3

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/constraintlayout/solver/state/State;->createHelperKey()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/HelperReference;

    if-nez v0, :cond_1

    sget-object v1, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Landroidx/constraintlayout/solver/state/HelperReference;

    invoke-direct {v1, p0, p2}, Landroidx/constraintlayout/solver/state/HelperReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_4
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    nop

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
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

.method public varargs horizontalChain([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    return-object v0
.end method

.method public horizontalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    return-void
.end method

.method reference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Reference;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    return-object p0
.end method

.method public setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    return-object p0
.end method

.method public varargs verticalChain([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    return-object v0
.end method

.method public verticalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public width(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;

    move-result-object v0

    return-object v0
.end method
