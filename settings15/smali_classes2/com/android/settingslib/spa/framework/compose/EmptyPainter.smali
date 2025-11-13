.class public final Lcom/android/settingslib/spa/framework/compose/EmptyPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/compose/EmptyPainter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spa/framework/compose/EmptyPainter;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/EmptyPainter;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/EmptyPainter;

    return-void
.end method


# virtual methods
.method public final getIntrinsicSize-NH-jbRc()J
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide v0
.end method

.method public final onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
