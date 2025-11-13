.class public final Lcom/android/wm/shell/animation/FloatProperties;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

.field public static final RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

.field public static final RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

.field public static final RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/animation/FloatProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_X$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_X$1;-><init>()V

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
