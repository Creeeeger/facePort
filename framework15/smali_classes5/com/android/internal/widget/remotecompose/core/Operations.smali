.class public Lcom/android/internal/widget/remotecompose/core/Operations;
.super Ljava/lang/Object;
.source "Operations.java"


# static fields
.field public static final blacklist ANIMATED_FLOAT:I = 0x51

.field public static final blacklist CLICK_AREA:I = 0x40

.field public static final blacklist CLIP_PATH:I = 0x26

.field public static final blacklist CLIP_RECT:I = 0x27

.field public static final blacklist COLOR_EXPRESSIONS:I = 0x86

.field public static final blacklist DATA_BITMAP:I = 0x65

.field public static final blacklist DATA_FLOAT:I = 0x50

.field public static final blacklist DATA_PATH:I = 0x7b

.field public static final blacklist DATA_SHADER:I = 0x2d

.field public static final blacklist DATA_TEXT:I = 0x66

.field public static final blacklist DRAW_ARC:I = 0x34

.field public static final blacklist DRAW_BITMAP:I = 0x2c

.field public static final blacklist DRAW_BITMAP_INT:I = 0x42

.field public static final blacklist DRAW_CIRCLE:I = 0x2e

.field public static final blacklist DRAW_LINE:I = 0x2f

.field public static final blacklist DRAW_OVAL:I = 0x38

.field public static final blacklist DRAW_PATH:I = 0x7c

.field public static final blacklist DRAW_RECT:I = 0x2a

.field public static final blacklist DRAW_ROUND_RECT:I = 0x33

.field public static final blacklist DRAW_TEXT_ANCHOR:I = 0x85

.field public static final blacklist DRAW_TEXT_ON_PATH:I = 0x35

.field public static final blacklist DRAW_TEXT_RUN:I = 0x2b

.field public static final blacklist DRAW_TWEEN_PATH:I = 0x7d

.field public static final blacklist HEADER:I = 0x0

.field public static final blacklist LOAD_BITMAP:I = 0x4

.field public static final blacklist MATRIX_RESTORE:I = 0x83

.field public static final blacklist MATRIX_ROTATE:I = 0x81

.field public static final blacklist MATRIX_SAVE:I = 0x82

.field public static final blacklist MATRIX_SCALE:I = 0x7e

.field public static final blacklist MATRIX_SET:I = 0x84

.field public static final blacklist MATRIX_SKEW:I = 0x80

.field public static final blacklist MATRIX_TRANSLATE:I = 0x7f

.field public static final blacklist PAINT_VALUES:I = 0x28

.field public static final blacklist ROOT_CONTENT_BEHAVIOR:I = 0x41

.field public static final blacklist ROOT_CONTENT_DESCRIPTION:I = 0x67

.field public static final blacklist TEXT_FROM_FLOAT:I = 0x87

.field public static final blacklist TEXT_MERGE:I = 0x88

.field public static final blacklist THEME:I = 0x3f

.field public static blacklist map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/Header;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x42

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x65

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x66

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextData$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x3f

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/Theme$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x40

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x41

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x67

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x34

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x2c

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x2e

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x2f

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x38

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawOval;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x7c

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x2a

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x33

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x35

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x2b

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x7d

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x7b

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/PathData$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x28

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x83

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x81

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x82

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x7e

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x80

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x7f

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x26

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x27

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x2d

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ShaderData$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x50

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x51

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x85

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x86

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x87

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/16 v1, 0x88

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
