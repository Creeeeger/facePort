.class final Lcom/android/systemui/communal/ui/compose/Colors$DisabledColorFilter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/Colors$DisabledColorFilter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/Colors$DisabledColorFilter$2;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/Colors$DisabledColorFilter$2;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Colors$DisabledColorFilter$2;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Colors$DisabledColorFilter$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 43

    sget-object v0, Lcom/android/systemui/communal/ui/compose/Colors;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Colors;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/graphics/ColorMatrix;->constructor-impl$default()[F

    move-result-object v0

    const/16 v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v4, 0x6

    aput v2, v0, v4

    const/16 v5, 0xc

    aput v2, v0, v5

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v6, 0x9

    aput v1, v0, v6

    const/16 v7, 0xe

    aput v1, v0, v7

    invoke-static {}, Landroidx/compose/ui/graphics/ColorMatrix;->constructor-impl$default()[F

    move-result-object v1

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-static {v1, v3, v8, v9}, Ljava/util/Arrays;->fill([FIIF)V

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v1, v3

    aput v8, v1, v5

    aput v8, v1, v4

    const/16 v10, 0x12

    aput v8, v1, v10

    const/4 v8, 0x1

    int-to-float v11, v8

    sub-float/2addr v11, v9

    const v12, 0x3e5a1cac    # 0.213f

    mul-float/2addr v12, v11

    const v13, 0x3f370a3d    # 0.715f

    mul-float/2addr v13, v11

    const v14, 0x3d9374bc    # 0.072f

    mul-float/2addr v11, v14

    add-float v14, v12, v9

    aput v14, v1, v3

    aput v13, v1, v8

    const/4 v14, 0x2

    aput v11, v1, v14

    const/4 v15, 0x5

    aput v12, v1, v15

    add-float v16, v13, v9

    aput v16, v1, v4

    const/16 v16, 0x7

    aput v11, v1, v16

    const/16 v17, 0xa

    aput v12, v1, v17

    const/16 v12, 0xb

    aput v13, v1, v12

    add-float/2addr v11, v9

    aput v11, v1, v5

    invoke-static {v3, v3, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v9

    invoke-static {v3, v8, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v11

    invoke-static {v3, v14, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v13

    const/4 v10, 0x3

    invoke-static {v3, v10, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v18

    aget v19, v1, v3

    aget v20, v0, v2

    mul-float v19, v19, v20

    aget v20, v1, v8

    aget v21, v0, v6

    mul-float v20, v20, v21

    add-float v20, v20, v19

    aget v19, v1, v14

    aget v21, v0, v7

    mul-float v19, v19, v21

    add-float v19, v19, v20

    aget v20, v1, v10

    const/16 v21, 0x13

    aget v22, v0, v21

    mul-float v20, v20, v22

    add-float v20, v20, v19

    aget v19, v1, v2

    add-float v20, v20, v19

    invoke-static {v8, v3, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v19

    invoke-static {v8, v8, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v22

    invoke-static {v8, v14, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v23

    invoke-static {v8, v10, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v24

    aget v25, v1, v15

    aget v26, v0, v2

    mul-float v25, v25, v26

    aget v26, v1, v4

    aget v27, v0, v6

    mul-float v26, v26, v27

    add-float v26, v26, v25

    aget v25, v1, v16

    aget v27, v0, v7

    mul-float v25, v25, v27

    add-float v25, v25, v26

    const/16 v26, 0x8

    aget v27, v1, v26

    aget v28, v0, v21

    mul-float v27, v27, v28

    add-float v27, v27, v25

    aget v25, v1, v6

    add-float v27, v27, v25

    invoke-static {v14, v3, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v25

    invoke-static {v14, v8, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v28

    invoke-static {v14, v14, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v29

    invoke-static {v14, v10, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v30

    aget v31, v1, v17

    aget v32, v0, v2

    mul-float v31, v31, v32

    aget v32, v1, v12

    aget v33, v0, v6

    mul-float v32, v32, v33

    add-float v32, v32, v31

    aget v31, v1, v5

    aget v33, v0, v7

    mul-float v31, v31, v33

    add-float v31, v31, v32

    const/16 v32, 0xd

    aget v33, v1, v32

    aget v34, v0, v21

    mul-float v33, v33, v34

    add-float v33, v33, v31

    aget v31, v1, v7

    add-float v33, v33, v31

    invoke-static {v10, v3, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v31

    invoke-static {v10, v8, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v34

    invoke-static {v10, v14, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v35

    invoke-static {v10, v10, v1, v0}, Landroidx/compose/ui/graphics/ColorMatrix;->dot-Me4OoYI(II[F[F)F

    move-result v36

    const/16 v37, 0xf

    aget v38, v1, v37

    aget v39, v0, v2

    mul-float v38, v38, v39

    const/16 v39, 0x10

    aget v40, v1, v39

    aget v41, v0, v6

    mul-float v40, v40, v41

    add-float v40, v40, v38

    const/16 v38, 0x11

    aget v41, v1, v38

    aget v42, v0, v7

    mul-float v41, v41, v42

    add-float v41, v41, v40

    const/16 v40, 0x12

    aget v42, v1, v40

    aget v0, v0, v21

    mul-float v42, v42, v0

    add-float v42, v42, v41

    aget v0, v1, v21

    add-float v42, v42, v0

    aput v9, v1, v3

    aput v11, v1, v8

    aput v13, v1, v14

    aput v18, v1, v10

    aput v20, v1, v2

    aput v19, v1, v15

    aput v22, v1, v4

    aput v23, v1, v16

    aput v24, v1, v26

    aput v27, v1, v6

    aput v25, v1, v17

    aput v28, v1, v12

    aput v29, v1, v5

    aput v30, v1, v32

    aput v33, v1, v7

    aput v31, v1, v37

    aput v34, v1, v39

    aput v35, v1, v38

    const/16 v0, 0x12

    aput v36, v1, v0

    aput v42, v1, v21

    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorMatrix;->box-impl([F)Landroidx/compose/ui/graphics/ColorMatrix;

    move-result-object v0

    return-object v0
.end method
