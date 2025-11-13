.class public final Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;

.field public static final mClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;

    invoke-direct {v0}, Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;-><init>()V

    sput-object v0, Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;->INSTANCE:Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;

    const-class v0, Landroid/view/HapticFeedbackConstants;

    sput-object v0, Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
