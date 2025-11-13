.class public final Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0xa

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v9

    invoke-interface {v0, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    new-instance v2, Landroidx/compose/ui/unit/IntRect;

    sget-object v3, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->INSTANCE:Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Left:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    invoke-virtual {v0, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v3

    sget-object v4, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Top:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    invoke-virtual {v0, v4}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v4

    sget-object v5, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Right:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    invoke-virtual {v0, v5}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v5

    sget-object v6, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Bottom:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    invoke-virtual {v0, v6}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    const/4 v13, 0x0

    iget v14, v2, Landroidx/compose/ui/unit/IntRect;->top:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x7

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    new-instance v5, Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1$1;

    invoke-direct {v5, v1, v0, v2}, Lcom/android/systemui/communal/ui/compose/CommunalContent$Content$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/unit/IntRect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
