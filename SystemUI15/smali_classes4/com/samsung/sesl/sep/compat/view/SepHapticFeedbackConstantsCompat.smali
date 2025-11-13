.class public final Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;

.field public static final SUPPORT_TOUCH_FEEDBACK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;

    invoke-direct {v0}, Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;-><init>()V

    sput-object v0, Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;->INSTANCE:Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;->SUPPORT_TOUCH_FEEDBACK:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
