.class public final Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Bottom:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;

.field public static final Left:Landroidx/compose/ui/layout/VerticalAlignmentLine;

.field public static final Right:Landroidx/compose/ui/layout/VerticalAlignmentLine;

.field public static final Top:Landroidx/compose/ui/layout/HorizontalAlignmentLine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->INSTANCE:Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;

    new-instance v0, Landroidx/compose/ui/layout/VerticalAlignmentLine;

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon$Left$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon$Left$1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/VerticalAlignmentLine;-><init>(Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Left:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    new-instance v0, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon$Top$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon$Top$1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/HorizontalAlignmentLine;-><init>(Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Top:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    new-instance v0, Landroidx/compose/ui/layout/VerticalAlignmentLine;

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon$Right$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon$Right$1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/VerticalAlignmentLine;-><init>(Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Right:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    new-instance v0, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    sget-object v1, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon$Bottom$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon$Bottom$1;

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/HorizontalAlignmentLine;-><init>(Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/composable/blueprint/BlueprintAlignmentLines$LockIcon;->Bottom:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
