.class public final Landroidx/compose/ui/graphics/colorspace/ColorSpaces;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final CieLab:Landroidx/compose/ui/graphics/colorspace/Lab;

.field public static final CieXyz:Landroidx/compose/ui/graphics/colorspace/Xyz;

.field public static final ColorSpacesArray:[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field public static final DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

.field public static final LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final Ntsc1953Primaries:[F

.field public static final Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

.field public static final ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field public static final SrgbPrimaries:[F

.field public static final Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    const/4 v0, 0x6

    new-array v12, v0, [F

    fill-array-data v12, :array_0

    sput-object v12, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    new-array v13, v0, [F

    fill-array-data v13, :array_1

    sput-object v13, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953Primaries:[F

    new-instance v14, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide v8, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v10, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v2, 0x4003333333333333L    # 2.4

    const-wide v4, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v6, 0x3faab1232f514a03L    # 0.05213270142180095

    move-object v1, v14

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDD)V

    new-instance v26, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide v22, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v24, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v16, 0x400199999999999aL    # 2.2

    const-wide v18, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v20, 0x3faab1232f514a03L    # 0.05213270142180095

    move-object/from16 v15, v26

    invoke-direct/range {v15 .. v25}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDD)V

    new-instance v27, Landroidx/compose/ui/graphics/colorspace/Rgb;

    sget-object v15, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const/4 v6, 0x0

    const-string v2, "sRGB IEC61966-2.1"

    move-object/from16 v1, v27

    move-object v3, v12

    move-object v4, v15

    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v27, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v28, Landroidx/compose/ui/graphics/colorspace/Rgb;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    const-string v2, "sRGB IEC61966-2.1 (Linear)"

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object/from16 v1, v28

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v28, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v29, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v6, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;-><init>(I)V

    const v8, -0x40b374bc    # -0.799f

    const-string v2, "scRGB-nl IEC 61966-2-2:2003"

    const v9, 0x40198937    # 2.399f

    const/4 v11, 0x2

    const/4 v5, 0x0

    move-object/from16 v1, v29

    move-object v3, v12

    move-object v4, v15

    move-object v10, v14

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v29, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v30, Landroidx/compose/ui/graphics/colorspace/Rgb;

    const/high16 v7, -0x41000000    # -0.5f

    const-string v2, "scRGB IEC 61966-2-2:2003"

    const v8, 0x40eff7cf    # 7.499f

    const/4 v9, 0x3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v30, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v31, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-instance v5, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide v39, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v41, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v33, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v35, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v37, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    move-object/from16 v32, v5

    invoke-direct/range {v32 .. v42}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDD)V

    const/4 v6, 0x4

    const-string v2, "Rec. ITU-R BT.709-5"

    move-object/from16 v1, v31

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v31, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v32, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v3, v0, [F

    fill-array-data v3, :array_3

    new-instance v5, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide v40, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v42, 0x3fb4d9e83e425aeeL    # 0.08145

    const-wide v34, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v36, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    const-wide v38, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    move-object/from16 v33, v5

    invoke-direct/range {v33 .. v43}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDD)V

    const/4 v6, 0x5

    const-string v2, "Rec. ITU-R BT.2020-1"

    move-object/from16 v1, v32

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v32, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v33, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    new-instance v2, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v3, 0x3ea0c49c    # 0.314f

    const v4, 0x3eb3b646    # 0.351f

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    const/16 v22, 0x0

    const-string v17, "SMPTE RP 431-2-2007 DCI (P3)"

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x6

    const-wide v20, 0x4004cccccccccccdL    # 2.6

    move-object/from16 v16, v33

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v24}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v33, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v34, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v3, v0, [F

    fill-array-data v3, :array_5

    const/4 v6, 0x7

    const-string v2, "Display P3"

    move-object/from16 v1, v34

    move-object v4, v15

    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v34, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v35, Landroidx/compose/ui/graphics/colorspace/Rgb;

    sget-object v4, Landroidx/compose/ui/graphics/colorspace/Illuminant;->C:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    new-instance v5, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide v43, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v45, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v37, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v39, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v41, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    move-object/from16 v36, v5

    invoke-direct/range {v36 .. v46}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDD)V

    const/16 v6, 0x8

    const-string v2, "NTSC (1953)"

    move-object/from16 v1, v35

    move-object v3, v13

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v35, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v36, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v3, v0, [F

    fill-array-data v3, :array_6

    new-instance v5, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide v44, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v46, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v38, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v40, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v42, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    move-object/from16 v37, v5

    invoke-direct/range {v37 .. v47}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDD)V

    const/16 v6, 0x9

    const-string v2, "SMPTE-C RGB"

    move-object/from16 v1, v36

    move-object v4, v15

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v36, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v37, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v3, v0, [F

    fill-array-data v3, :array_7

    const/4 v7, 0x0

    const-string v2, "Adobe RGB (1998)"

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xa

    const-wide v5, 0x400199999999999aL    # 2.2

    move-object/from16 v1, v37

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v37, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v38, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v1, v0, [F

    fill-array-data v1, :array_8

    sget-object v19, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    new-instance v20, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide/high16 v46, 0x3fb0000000000000L    # 0.0625

    const-wide v48, 0x3f9fff79c842fa51L    # 0.031248

    const-wide v40, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    const-wide/16 v44, 0x0

    move-object/from16 v39, v20

    invoke-direct/range {v39 .. v49}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDD)V

    const/16 v21, 0xb

    const-string v17, "ROMM RGB ISO 22028-2:2013"

    move-object/from16 v16, v38

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v38, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v39, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v4, v0, [F

    fill-array-data v4, :array_9

    sget-object v19, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D60:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v8, -0x38802000    # -65504.0f

    const-string v3, "SMPTE ST 2065-1:2012 ACES"

    const v9, 0x477fe000    # 65504.0f

    const/16 v10, 0xc

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v2, v39

    move-object/from16 v5, v19

    invoke-direct/range {v2 .. v10}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v39, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v40, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    const v22, -0x38802000    # -65504.0f

    const-string v17, "Academy S-2014-004 ACEScg"

    const v23, 0x477fe000    # 65504.0f

    const/16 v24, 0xd

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v40

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v24}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v40, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Xyz;

    sget-wide v1, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Xyz:J

    const-string v3, "Generic XYZ"

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(JILjava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieXyz:Landroidx/compose/ui/graphics/colorspace/Xyz;

    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Lab;

    sget-wide v8, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Lab:J

    const-string v1, "Generic L*a*b*"

    const/16 v2, 0xf

    invoke-direct {v7, v8, v9, v2, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(JILjava/lang/String;)V

    sput-object v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieLab:Landroidx/compose/ui/graphics/colorspace/Lab;

    new-instance v43, Landroidx/compose/ui/graphics/colorspace/Rgb;

    const/16 v6, 0x10

    const-string v2, "None"

    move-object/from16 v1, v43

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v5, v26

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v43, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Oklab;

    const-string v2, "Oklab"

    const/16 v3, 0x11

    invoke-direct {v1, v8, v9, v3, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(JILjava/lang/String;)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    move-object/from16 v41, v0

    move-object/from16 v42, v7

    move-object/from16 v44, v1

    filled-new-array/range {v27 .. v44}, [Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ColorSpacesArray:[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_1
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    :array_2
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_3
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    :array_4
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_5
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_6
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    :array_7
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_8
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    :array_9
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    :array_a
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
.end method
