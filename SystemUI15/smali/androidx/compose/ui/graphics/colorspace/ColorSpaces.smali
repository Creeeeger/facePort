.class public final Landroidx/compose/ui/graphics/colorspace/ColorSpaces;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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
    .locals 67

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    const/4 v0, 0x6

    new-array v12, v0, [F

    fill-array-data v12, :array_0

    sput-object v12, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    new-array v13, v0, [F

    fill-array-data v13, :array_1

    sput-object v13, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953Primaries:[F

    new-instance v31, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v14, v31

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide v15, 0x4003333333333333L    # 2.4

    const-wide v17, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v19, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v21, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v23, 0x3fa4b5dcc63f1412L    # 0.04045

    const/16 v29, 0x60

    const/16 v30, 0x0

    invoke-direct/range {v14 .. v30}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v14, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v32, v14

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide v33, 0x400199999999999aL    # 2.2

    const-wide v35, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v37, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v39, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v41, 0x3fa4b5dcc63f1412L    # 0.04045

    const/16 v47, 0x60

    const/16 v48, 0x0

    invoke-direct/range {v32 .. v48}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v49, Landroidx/compose/ui/graphics/colorspace/Rgb;

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const/4 v6, 0x0

    const-string v2, "sRGB IEC61966-2.1"

    move-object/from16 v1, v49

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v5, v31

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v49, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v50, Landroidx/compose/ui/graphics/colorspace/Rgb;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    const-string v2, "sRGB IEC61966-2.1 (Linear)"

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object/from16 v1, v50

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v50, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v51, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v6, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v5, 0x0

    const v8, -0x40b374bc    # -0.799f

    const-string v2, "scRGB-nl IEC 61966-2-2:2003"

    const v9, 0x40198937    # 2.399f

    const/4 v11, 0x2

    move-object/from16 v1, v51

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v10, v31

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v51, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v52, Landroidx/compose/ui/graphics/colorspace/Rgb;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/high16 v7, -0x41000000    # -0.5f

    const-string v2, "scRGB IEC 61966-2-2:2003"

    const v8, 0x40eff7cf    # 7.499f

    const/4 v9, 0x3

    move-object/from16 v1, v52

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v52, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->LinearExtendedSrgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v53, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v4, v0, [F

    fill-array-data v4, :array_2

    new-instance v6, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v32, v6

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide v33, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v35, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v37, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v39, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v41, 0x3fb4bc6a7ef9db23L    # 0.081

    const/16 v47, 0x60

    const/16 v48, 0x0

    invoke-direct/range {v32 .. v48}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x4

    const-string v3, "Rec. ITU-R BT.709-5"

    move-object/from16 v2, v53

    move-object v5, v15

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v53, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt709:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v54, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    new-instance v6, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v32, v6

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide v33, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v35, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    const-wide v37, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    const-wide v39, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v41, 0x3fb4d9e83e425aeeL    # 0.08145

    const/16 v47, 0x60

    const/16 v48, 0x0

    invoke-direct/range {v32 .. v48}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x5

    const-string v3, "Rec. ITU-R BT.2020-1"

    move-object/from16 v2, v54

    move-object v5, v15

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v54, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Bt2020:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v55, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    new-instance v2, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v3, 0x3ea0c49c    # 0.314f

    const v4, 0x3eb3b646    # 0.351f

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    const-wide v20, 0x4004cccccccccccdL    # 2.6

    const/16 v22, 0x0

    const-string v17, "SMPTE RP 431-2-2007 DCI (P3)"

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x6

    move-object/from16 v16, v55

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v24}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v55, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DciP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v56, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v3, v0, [F

    fill-array-data v3, :array_5

    const/4 v6, 0x7

    const-string v2, "Display P3"

    move-object/from16 v1, v56

    move-object v4, v15

    move-object/from16 v5, v31

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v56, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->DisplayP3:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v57, Landroidx/compose/ui/graphics/colorspace/Rgb;

    sget-object v4, Landroidx/compose/ui/graphics/colorspace/Illuminant;->C:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    new-instance v5, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v16, v5

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide v17, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v19, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v21, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v23, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v25, 0x3fb4bc6a7ef9db23L    # 0.081

    const/16 v31, 0x60

    const/16 v32, 0x0

    invoke-direct/range {v16 .. v32}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v6, 0x8

    const-string v2, "NTSC (1953)"

    move-object/from16 v1, v57

    move-object v3, v13

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v57, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v58, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v4, v0, [F

    fill-array-data v4, :array_6

    new-instance v6, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v16, v6

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide v17, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v19, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v21, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v23, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v25, 0x3fb4bc6a7ef9db23L    # 0.081

    const/16 v31, 0x60

    const/16 v32, 0x0

    invoke-direct/range {v16 .. v32}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v7, 0x9

    const-string v3, "SMPTE-C RGB"

    move-object/from16 v2, v58

    move-object v5, v15

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v58, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SmpteC:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v59, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v4, v0, [F

    fill-array-data v4, :array_7

    const-wide v6, 0x400199999999999aL    # 2.2

    const/4 v8, 0x0

    const-string v3, "Adobe RGB (1998)"

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xa

    move-object/from16 v2, v59

    move-object v5, v15

    invoke-direct/range {v2 .. v10}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v59, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->AdobeRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v60, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v1, v0, [F

    fill-array-data v1, :array_8

    sget-object v19, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    new-instance v2, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v20, v2

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide v21, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    const-wide/16 v25, 0x0

    const-wide/high16 v27, 0x3fb0000000000000L    # 0.0625

    const-wide v29, 0x3f9fff79c842fa51L    # 0.031248

    const/16 v35, 0x60

    const/16 v36, 0x0

    invoke-direct/range {v20 .. v36}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v21, 0xb

    const-string v17, "ROMM RGB ISO 22028-2:2013"

    move-object/from16 v16, v60

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v60, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->ProPhotoRgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v61, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v5, v0, [F

    fill-array-data v5, :array_9

    sget-object v19, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D60:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const v9, -0x38802000    # -65504.0f

    const-string v4, "SMPTE ST 2065-1:2012 ACES"

    const v10, 0x477fe000    # 65504.0f

    const/16 v11, 0xc

    move-object/from16 v3, v61

    move-object/from16 v6, v19

    invoke-direct/range {v3 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v61, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Aces:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v62, Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const v22, -0x38802000    # -65504.0f

    const-string v17, "Academy S-2014-004 ACEScg"

    const v23, 0x477fe000    # 65504.0f

    const/16 v24, 0xd

    move-object/from16 v16, v62

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v24}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    sput-object v62, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Acescg:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Xyz;

    const-string v1, "Generic XYZ"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Xyz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieXyz:Landroidx/compose/ui/graphics/colorspace/Xyz;

    new-instance v7, Landroidx/compose/ui/graphics/colorspace/Lab;

    const-string v1, "Generic L*a*b*"

    const/16 v2, 0xf

    invoke-direct {v7, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Lab;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->CieLab:Landroidx/compose/ui/graphics/colorspace/Lab;

    new-instance v65, Landroidx/compose/ui/graphics/colorspace/Rgb;

    const/16 v6, 0x10

    const-string v2, "None"

    move-object/from16 v1, v65

    move-object v3, v12

    move-object v4, v15

    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    sput-object v65, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Unspecified:Landroidx/compose/ui/graphics/colorspace/Rgb;

    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Oklab;

    move-object/from16 v66, v1

    const-string v2, "Oklab"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/Oklab;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    move-object/from16 v63, v0

    move-object/from16 v64, v7

    filled-new-array/range {v49 .. v66}, [Landroidx/compose/ui/graphics/colorspace/ColorSpace;

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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
