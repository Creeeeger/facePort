.class public final Lcom/android/systemui/qs/animator/QsAnimatorState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

.field public static detailTriggeredExpand:Z

.field public static expandedByNotiOverScroll:Z

.field public static isCustomizerShowing:Z

.field public static isDetailClosing:Z

.field public static isDetailOpening:Z

.field public static isDetailPopupShowing:Z

.field public static isDetailShowing:Z

.field public static isNotificationImmersiceScrolling:Z

.field public static isSliding:Z

.field public static panelExpanded:Z

.field public static qsExpanded:Z

.field public static final qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

.field public static state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/animator/QsAnimatorState;

    invoke-direct {v0}, Lcom/android/systemui/qs/animator/QsAnimatorState;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState$qsExpansionStateInteractor$2;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState$qsExpansionStateInteractor$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
