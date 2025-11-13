.class public final Lcom/android/systemui/communal/ui/compose/Colors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DisabledColorFilter$delegate:Lkotlin/Lazy;

.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/Colors;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/Colors;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/Colors;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Colors;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Colors;

    sget-object v0, Lcom/android/systemui/communal/ui/compose/Colors$DisabledColorFilter$2;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Colors$DisabledColorFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Colors;->DisabledColorFilter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
