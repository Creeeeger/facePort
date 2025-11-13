.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;
.super Ljava/lang/Object;
.source "NanMap.java"


# static fields
.field public static final blacklist ADD:F

.field public static final blacklist CLOSE:I = 0x1005

.field public static final blacklist CLOSE_NAN:F

.field public static final blacklist CONIC:I = 0x1003

.field public static final blacklist CONIC_NAN:F

.field public static final blacklist CUBIC:I = 0x1004

.field public static final blacklist CUBIC_NAN:F

.field public static final blacklist DIV:F

.field public static final blacklist DONE:I = 0x1006

.field public static final blacklist DONE_NAN:F

.field public static final blacklist LINE:I = 0x1001

.field public static final blacklist LINE_NAN:F

.field public static final blacklist MAX:F

.field public static final blacklist MIN:F

.field public static final blacklist MOD:F

.field public static final blacklist MOVE:I = 0x1000

.field public static final blacklist MOVE_NAN:F

.field public static final blacklist MUL:F

.field public static final blacklist POW:F

.field public static final blacklist QUADRATIC:I = 0x1002

.field public static final blacklist QUADRATIC_NAN:F

.field public static final blacklist SUB:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->MOVE_NAN:F

    const/16 v0, 0x1001

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->LINE_NAN:F

    const/16 v0, 0x1002

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->QUADRATIC_NAN:F

    const/16 v0, 0x1003

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CONIC_NAN:F

    const/16 v0, 0x1004

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CUBIC_NAN:F

    const/16 v0, 0x1005

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->CLOSE_NAN:F

    const/16 v0, 0x1006

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->DONE_NAN:F

    const/16 v0, 0x1100

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->ADD:F

    const/16 v0, 0x1101

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->SUB:F

    const/16 v0, 0x1102

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->MUL:F

    const/16 v0, 0x1103

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->DIV:F

    const/16 v0, 0x1104

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->MOD:F

    const/16 v0, 0x1105

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->MIN:F

    const/16 v0, 0x1106

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->MAX:F

    const/16 v0, 0x1107

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->POW:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asNan(I)F
    .locals 1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static blacklist fromNaN(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    return v1
.end method
