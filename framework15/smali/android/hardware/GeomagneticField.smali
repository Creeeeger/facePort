.class public Landroid/hardware/GeomagneticField;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/GeomagneticField$LegendreTable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o BASE_TIME:J

.field private static final greylist-max-o DELTA_G:[[F

.field private static final greylist-max-o DELTA_H:[[F

.field private static final greylist-max-o EARTH_REFERENCE_RADIUS_KM:F = 6371.2f

.field private static final greylist-max-o EARTH_SEMI_MAJOR_AXIS_KM:F = 6378.137f

.field private static final greylist-max-o EARTH_SEMI_MINOR_AXIS_KM:F = 6356.7524f

.field private static final greylist-max-o G_COEFF:[[F

.field private static final greylist-max-o H_COEFF:[[F

.field private static final greylist-max-o SCHMIDT_QUASI_NORM_FACTORS:[[F


# instance fields
.field private greylist-max-o mGcLatitudeRad:F

.field private greylist-max-o mGcLongitudeRad:F

.field private greylist-max-o mGcRadiusKm:F

.field private greylist-max-o mX:F

.field private greylist-max-o mY:F

.field private greylist-max-o mZ:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 29

    nop

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v1, v14

    const/4 v13, 0x2

    new-array v2, v13, [F

    fill-array-data v2, :array_0

    const/4 v12, 0x3

    new-array v3, v12, [F

    fill-array-data v3, :array_1

    const/4 v11, 0x4

    new-array v4, v11, [F

    fill-array-data v4, :array_2

    const/4 v10, 0x5

    new-array v5, v10, [F

    fill-array-data v5, :array_3

    const/4 v9, 0x6

    new-array v6, v9, [F

    fill-array-data v6, :array_4

    const/4 v8, 0x7

    new-array v7, v8, [F

    fill-array-data v7, :array_5

    const/16 v14, 0x8

    new-array v8, v14, [F

    fill-array-data v8, :array_6

    const/16 v14, 0x9

    new-array v9, v14, [F

    fill-array-data v9, :array_7

    const/16 v10, 0xa

    new-array v10, v10, [F

    fill-array-data v10, :array_8

    const/16 v11, 0xb

    new-array v11, v11, [F

    fill-array-data v11, :array_9

    const/16 v12, 0xc

    new-array v12, v12, [F

    fill-array-data v12, :array_a

    const/16 v13, 0xd

    new-array v13, v13, [F

    fill-array-data v13, :array_b

    const/4 v14, 0x7

    const/4 v14, 0x6

    const/4 v14, 0x5

    const/4 v14, 0x4

    const/4 v14, 0x3

    const/4 v14, 0x2

    filled-new-array/range {v1 .. v13}, [[F

    move-result-object v1

    sput-object v1, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput v15, v1, v2

    new-array v2, v14, [F

    fill-array-data v2, :array_c

    const/4 v3, 0x3

    new-array v4, v3, [F

    fill-array-data v4, :array_d

    const/4 v3, 0x4

    new-array v5, v3, [F

    fill-array-data v5, :array_e

    const/4 v3, 0x5

    new-array v6, v3, [F

    fill-array-data v6, :array_f

    const/4 v3, 0x6

    new-array v7, v3, [F

    fill-array-data v7, :array_10

    const/4 v3, 0x7

    new-array v8, v3, [F

    fill-array-data v8, :array_11

    const/16 v3, 0x8

    new-array v9, v3, [F

    fill-array-data v9, :array_12

    const/16 v3, 0x9

    new-array v10, v3, [F

    fill-array-data v10, :array_13

    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_14

    const/16 v11, 0xb

    new-array v11, v11, [F

    fill-array-data v11, :array_15

    const/16 v12, 0xc

    new-array v12, v12, [F

    fill-array-data v12, :array_16

    const/16 v13, 0xd

    new-array v13, v13, [F

    fill-array-data v13, :array_17

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v3

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    filled-new-array/range {v16 .. v28}, [[F

    move-result-object v1

    sput-object v1, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput v15, v1, v2

    new-array v2, v14, [F

    fill-array-data v2, :array_18

    const/4 v3, 0x3

    new-array v4, v3, [F

    fill-array-data v4, :array_19

    const/4 v3, 0x4

    new-array v5, v3, [F

    fill-array-data v5, :array_1a

    const/4 v3, 0x5

    new-array v6, v3, [F

    fill-array-data v6, :array_1b

    const/4 v3, 0x6

    new-array v7, v3, [F

    fill-array-data v7, :array_1c

    const/4 v3, 0x7

    new-array v8, v3, [F

    fill-array-data v8, :array_1d

    const/16 v3, 0x8

    new-array v9, v3, [F

    fill-array-data v9, :array_1e

    const/16 v3, 0x9

    new-array v10, v3, [F

    fill-array-data v10, :array_1f

    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_20

    const/16 v11, 0xb

    new-array v11, v11, [F

    fill-array-data v11, :array_21

    const/16 v12, 0xc

    new-array v12, v12, [F

    fill-array-data v12, :array_22

    const/16 v13, 0xd

    new-array v13, v13, [F

    fill-array-data v13, :array_23

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v3

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    filled-new-array/range {v16 .. v28}, [[F

    move-result-object v1

    sput-object v1, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput v15, v1, v2

    new-array v2, v14, [F

    fill-array-data v2, :array_24

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_25

    const/4 v4, 0x4

    new-array v4, v4, [F

    fill-array-data v4, :array_26

    const/4 v5, 0x5

    new-array v5, v5, [F

    fill-array-data v5, :array_27

    const/4 v6, 0x6

    new-array v6, v6, [F

    fill-array-data v6, :array_28

    const/4 v7, 0x7

    new-array v7, v7, [F

    fill-array-data v7, :array_29

    const/16 v8, 0x8

    new-array v8, v8, [F

    fill-array-data v8, :array_2a

    const/16 v9, 0x9

    new-array v9, v9, [F

    fill-array-data v9, :array_2b

    const/16 v10, 0xa

    new-array v10, v10, [F

    fill-array-data v10, :array_2c

    const/16 v11, 0xb

    new-array v11, v11, [F

    fill-array-data v11, :array_2d

    const/16 v12, 0xc

    new-array v12, v12, [F

    fill-array-data v12, :array_2e

    const/16 v13, 0xd

    new-array v13, v13, [F

    fill-array-data v13, :array_2f

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    filled-new-array/range {v16 .. v28}, [[F

    move-result-object v1

    sput-object v1, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    new-instance v1, Ljava/util/Calendar$Builder;

    invoke-direct {v1}, Ljava/util/Calendar$Builder;-><init>()V

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar$Builder;->setTimeZone(Ljava/util/TimeZone;)Ljava/util/Calendar$Builder;

    move-result-object v1

    const/16 v2, 0x7e4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/Calendar$Builder;->setDate(III)Ljava/util/Calendar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    sget-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    array-length v0, v0

    invoke-static {v0}, Landroid/hardware/GeomagneticField;->computeSchmidtQuasiNormFactors(I)[[F

    move-result-object v0

    sput-object v0, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    return-void

    :array_0
    .array-data 4
        -0x391a4700    # -29404.5f
        -0x3b4aa99a    # -1450.7f
    .end array-data

    :array_1
    .array-data 4
        -0x3ae3c000    # -2500.0f
        0x453a6000    # 2982.0f
        0x44d1999a    # 1676.8f
    .end array-data

    :array_2
    .array-data 4
        0x44aa7ccd    # 1363.9f
        -0x3aeb3000    # -2381.0f
        0x449a8666    # 1236.2f
        0x44036ccd    # 525.7f
    .end array-data

    :array_3
    .array-data 4
        0x4461c666    # 903.1f
        0x444a599a    # 809.4f
        0x42ac6666    # 86.2f
        -0x3c654ccd    # -309.4f
        0x423f999a    # 47.9f
    .end array-data

    :array_4
    .array-data 4
        -0x3c95999a    # -234.4f
        0x43b58ccd    # 363.1f
        0x433bcccd    # 187.8f
        -0x3cf34ccd    # -140.7f
        -0x3ce8cccd    # -151.2f
        0x415b3333    # 13.7f
    .end array-data

    :array_5
    .array-data 4
        0x4283cccd    # 65.9f
        0x42833333    # 65.6f
        0x42920000    # 73.0f
        -0x3d0d0000    # -121.5f
        -0x3def3333    # -36.2f
        0x41580000    # 13.5f
        -0x3d7e999a    # -64.7f
    .end array-data

    :array_6
    .array-data 4
        0x42a13333    # 80.6f
        -0x3d666666    # -76.8f
        -0x3efb3333    # -8.3f
        0x42620000    # 56.5f
        0x417ccccd    # 15.8f
        0x40cccccd    # 6.4f
        -0x3f19999a    # -7.2f
        0x411ccccd    # 9.8f
    .end array-data

    :array_7
    .array-data 4
        0x41bccccd    # 23.6f
        0x411ccccd    # 9.8f
        -0x3e740000    # -17.5f
        -0x41333333    # -0.4f
        -0x3e573333    # -21.1f
        0x4174cccd    # 15.3f
        0x415b3333    # 13.7f
        -0x3e7c0000    # -16.5f
        -0x41666666    # -0.3f
    .end array-data

    :array_8
    .array-data 4
        0x40a00000    # 5.0f
        0x41033333    # 8.2f
        0x4039999a    # 2.9f
        -0x404ccccd    # -1.4f
        -0x40733333    # -1.1f
        -0x3eab3333    # -13.3f
        0x3f8ccccd    # 1.1f
        0x410e6666    # 8.9f
        -0x3eeb3333    # -9.3f
        -0x3ec1999a    # -11.9f
    .end array-data

    :array_9
    .array-data 4
        -0x400ccccd    # -1.9f
        -0x3f39999a    # -6.2f
        -0x42333333    # -0.1f
        0x3fd9999a    # 1.7f
        -0x4099999a    # -0.9f
        0x3f19999a    # 0.6f
        -0x4099999a    # -0.9f
        0x3ff33333    # 1.9f
        0x3fb33333    # 1.4f
        -0x3fe66666    # -2.4f
        -0x3f866666    # -3.9f
    .end array-data

    :array_a
    .array-data 4
        0x40400000    # 3.0f
        -0x404ccccd    # -1.4f
        -0x3fe00000    # -2.5f
        0x4019999a    # 2.4f
        -0x4099999a    # -0.9f
        0x3e99999a    # 0.3f
        -0x40cccccd    # -0.7f
        -0x42333333    # -0.1f
        0x3fb33333    # 1.4f
        -0x40e66666    # -0.6f
        0x3e4ccccd    # 0.2f
        0x40466666    # 3.1f
    .end array-data

    :array_b
    .array-data 4
        -0x40000000    # -2.0f
        -0x42333333    # -0.1f
        0x3f000000    # 0.5f
        0x3fa66666    # 1.3f
        -0x40666666    # -1.2f
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        -0x41b33333    # -0.2f
        -0x41000000    # -0.5f
        0x3dcccccd    # 0.1f
        -0x40733333    # -1.1f
        -0x41666666    # -0.3f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x45916733    # 4652.9f
    .end array-data

    :array_d
    .array-data 4
        0x0
        -0x3ac50666    # -2991.6f
        -0x3bc84ccd    # -734.8f
    .end array-data

    :array_e
    .array-data 4
        0x0
        -0x3d5b999a    # -82.2f
        0x4371cccd    # 241.8f
        -0x3bf84666    # -542.9f
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x438d0000    # 282.0f
        -0x3ce1999a    # -158.4f
        0x4347cccd    # 199.8f
        -0x3c50f333    # -350.1f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x423ecccd    # 47.7f
        0x43506666    # 208.4f
        -0x3d0d6666    # -121.3f
        0x4200cccd    # 32.2f
        0x42c63333    # 99.1f
    .end array-data

    :array_11
    .array-data 4
        0x0
        -0x3e673333    # -19.1f
        0x41c80000    # 25.0f
        0x4252cccd    # 52.7f
        -0x3d7f3333    # -64.4f
        0x41100000    # 9.0f
        0x42883333    # 68.1f
    .end array-data

    :array_12
    .array-data 4
        0x0
        -0x3db26666    # -51.4f
        -0x3e79999a    # -16.8f
        0x40133333    # 2.3f
        0x41bc0000    # 23.5f
        -0x3ff33333    # -2.2f
        -0x3e266666    # -27.2f
        -0x400ccccd    # -1.9f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x41066666    # 8.4f
        -0x3e8b3333    # -15.3f
        0x414ccccd    # 12.8f
        -0x3ec33333    # -11.8f
        0x416e6666    # 14.9f
        0x40666666    # 3.6f
        -0x3f233333    # -6.9f
        0x40333333    # 2.8f
    .end array-data

    :array_14
    .array-data 4
        0x0
        -0x3e45999a    # -23.3f
        0x4131999a    # 11.1f
        0x411ccccd    # 9.8f
        -0x3f5ccccd    # -5.1f
        -0x3f39999a    # -6.2f
        0x40f9999a    # 7.8f
        0x3ecccccd    # 0.4f
        -0x40400000    # -1.5f
        0x411b3333    # 9.7f
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x4059999a    # 3.4f
        -0x41b33333    # -0.2f
        0x40600000    # 3.5f
        0x4099999a    # 4.8f
        -0x3ef66666    # -8.6f
        -0x42333333    # -0.1f
        -0x3f79999a    # -4.2f
        -0x3fa66666    # -3.4f
        -0x42333333    # -0.1f
        -0x3ef33333    # -8.8f
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
        0x40266666    # 2.6f
        -0x41000000    # -0.5f
        -0x41333333    # -0.4f
        0x3f19999a    # 0.6f
        -0x41b33333    # -0.2f
        -0x40266666    # -1.7f
        -0x40333333    # -1.6f
        -0x3fc00000    # -3.0f
        -0x40000000    # -2.0f
        -0x3fd9999a    # -2.6f
    .end array-data

    :array_17
    .array-data 4
        0x0
        -0x40666666    # -1.2f
        0x3f000000    # 0.5f
        0x3fa66666    # 1.3f
        -0x4019999a    # -1.8f
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        -0x42333333    # -0.1f
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
        -0x4099999a    # -0.9f
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_18
    .array-data 4
        0x40d66666    # 6.7f
        0x40f66666    # 7.7f
    .end array-data

    :array_19
    .array-data 4
        -0x3ec80000    # -11.5f
        -0x3f1ccccd    # -7.1f
        -0x3ff33333    # -2.2f
    .end array-data

    :array_1a
    .array-data 4
        0x40333333    # 2.8f
        -0x3f39999a    # -6.2f
        0x4059999a    # 3.4f
        -0x3ebccccd    # -12.2f
    .end array-data

    :array_1b
    .array-data 4
        -0x40733333    # -1.1f
        -0x40333333    # -1.6f
        -0x3f400000    # -6.0f
        0x40accccd    # 5.4f
        -0x3f500000    # -5.5f
    .end array-data

    :array_1c
    .array-data 4
        -0x41666666    # -0.3f
        0x3f19999a    # 0.6f
        -0x40cccccd    # -0.7f
        0x3dcccccd    # 0.1f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1d
    .array-data 4
        -0x40e66666    # -0.6f
        -0x41333333    # -0.4f
        0x3f000000    # 0.5f
        0x3fb33333    # 1.4f
        -0x404ccccd    # -1.4f
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1e
    .array-data 4
        -0x42333333    # -0.1f
        -0x41666666    # -0.3f
        -0x42333333    # -0.1f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        -0x41000000    # -0.5f
        -0x40b33333    # -0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1f
    .array-data 4
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x3f000000    # 0.5f
        -0x42333333    # -0.1f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x0
        0x3ecccccd    # 0.4f
    .end array-data

    :array_20
    .array-data 4
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        0x3ecccccd    # 0.4f
        -0x41666666    # -0.3f
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        -0x41333333    # -0.4f
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x0
        0x0
        0x3e4ccccd    # 0.2f
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        -0x42333333    # -0.1f
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x0
        -0x42333333    # -0.1f
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x0
        0x0
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
    .end array-data

    :array_24
    .array-data 4
        0x0
        -0x3e373333    # -25.1f
    .end array-data

    :array_25
    .array-data 4
        0x0
        -0x3e0e6666    # -30.2f
        -0x3e40cccd    # -23.9f
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x40b66666    # 5.7f
        -0x40800000    # -1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x40dccccd    # 6.9f
        0x406ccccd    # 3.7f
        -0x3f4ccccd    # -5.6f
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x40200000    # 2.5f
        -0x4099999a    # -0.9f
        0x40400000    # 3.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        -0x4019999a    # -1.8f
        -0x404ccccd    # -1.4f
        0x3f666666    # 0.9f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        -0x40cccccd    # -0.7f
        -0x41b33333    # -0.2f
        -0x40666666    # -1.2f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2b
    .array-data 4
        0x0
        -0x41666666    # -0.3f
        0x3f333333    # 0.7f
        -0x41b33333    # -0.2f
        0x3f000000    # 0.5f
        -0x41666666    # -0.3f
        -0x41000000    # -0.5f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_2c
    .array-data 4
        0x0
        -0x41666666    # -0.3f
        0x3e4ccccd    # 0.2f
        -0x41333333    # -0.4f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
        0x0
        -0x41b33333    # -0.2f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        -0x41666666    # -0.3f
        0x3dcccccd    # 0.1f
        -0x41b33333    # -0.2f
        0x3dcccccd    # 0.1f
        0x0
        -0x42333333    # -0.1f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x3e4ccccd    # 0.2f
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        -0x42333333    # -0.1f
        0x0
        0x0
    .end array-data

    :array_2f
    .array-data 4
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
    .end array-data
.end method

.method public constructor whitelist <init>(FFFJ)V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    array-length v1, v1

    nop

    const v2, -0x3d4c0001    # -89.99999f

    move/from16 v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v4, 0x42b3ffff    # 89.99999f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v2, v3, v4}, Landroid/hardware/GeomagneticField;->computeGeocentricCoordinates(FFF)V

    nop

    new-instance v5, Landroid/hardware/GeomagneticField$LegendreTable;

    add-int/lit8 v6, v1, -0x1

    iget v7, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    float-to-double v7, v7

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v7

    double-to-float v7, v9

    invoke-direct {v5, v6, v7}, Landroid/hardware/GeomagneticField$LegendreTable;-><init>(IF)V

    add-int/lit8 v6, v1, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    const v9, 0x45c7199a

    iget v10, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    div-float/2addr v9, v10

    const/4 v10, 0x1

    aput v9, v6, v10

    const/4 v9, 0x2

    :goto_0
    array-length v11, v6

    if-ge v9, v11, :cond_0

    add-int/lit8 v11, v9, -0x1

    aget v11, v6, v11

    aget v12, v6, v10

    mul-float/2addr v11, v12

    aput v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-array v9, v1, [F

    new-array v11, v1, [F

    const/4 v12, 0x0

    aput v12, v9, v7

    aput v8, v11, v7

    iget v7, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v7, v12

    aput v7, v9, v10

    iget v7, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v7, v12

    aput v7, v11, v10

    const/4 v7, 0x2

    :goto_1
    if-ge v7, v1, :cond_1

    shr-int/lit8 v10, v7, 0x1

    sub-int v12, v7, v10

    aget v12, v9, v12

    aget v13, v11, v10

    mul-float/2addr v12, v13

    sub-int v13, v7, v10

    aget v13, v11, v13

    aget v14, v9, v10

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v9, v7

    sub-int v12, v7, v10

    aget v12, v11, v12

    aget v13, v11, v10

    mul-float/2addr v12, v13

    sub-int v13, v7, v10

    aget v13, v9, v13

    aget v14, v9, v10

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget v7, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v7, v12

    div-float/2addr v8, v7

    sget-wide v12, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    sub-long v12, p4, v12

    long-to-float v7, v12

    const v10, 0x50eaf626

    div-float/2addr v7, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_2
    if-ge v14, v1, :cond_3

    const/4 v15, 0x0

    :goto_3
    if-gt v15, v14, :cond_2

    sget-object v16, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    aget-object v16, v16, v14

    aget v16, v16, v15

    sget-object v17, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    aget-object v17, v17, v14

    aget v17, v17, v15

    mul-float v17, v17, v7

    add-float v16, v16, v17

    sget-object v17, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    aget-object v17, v17, v14

    aget v17, v17, v15

    sget-object v18, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    aget-object v18, v18, v14

    aget v18, v18, v15

    mul-float v18, v18, v7

    add-float v17, v17, v18

    add-int/lit8 v18, v14, 0x2

    aget v18, v6, v18

    aget v19, v11, v15

    mul-float v19, v19, v16

    aget v20, v9, v15

    mul-float v20, v20, v17

    add-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v19, v1

    iget-object v1, v5, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v1, v1, v14

    aget v1, v1, v15

    mul-float v18, v18, v1

    sget-object v1, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v1, v1, v14

    aget v1, v1, v15

    mul-float v18, v18, v1

    add-float v10, v10, v18

    add-int/lit8 v1, v14, 0x2

    aget v1, v6, v1

    int-to-float v3, v15

    mul-float/2addr v1, v3

    aget v3, v9, v15

    mul-float v3, v3, v16

    aget v18, v11, v15

    mul-float v18, v18, v17

    sub-float v3, v3, v18

    mul-float/2addr v1, v3

    iget-object v3, v5, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v3, v3, v14

    aget v3, v3, v15

    mul-float/2addr v1, v3

    sget-object v3, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v3, v3, v14

    aget v3, v3, v15

    mul-float/2addr v1, v3

    mul-float/2addr v1, v8

    add-float/2addr v12, v1

    add-int/lit8 v1, v14, 0x1

    int-to-float v1, v1

    add-int/lit8 v3, v14, 0x2

    aget v3, v6, v3

    mul-float/2addr v1, v3

    aget v3, v11, v15

    mul-float v3, v3, v16

    aget v18, v9, v15

    mul-float v18, v18, v17

    add-float v3, v3, v18

    mul-float/2addr v1, v3

    iget-object v3, v5, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v3, v3, v14

    aget v3, v3, v15

    mul-float/2addr v1, v3

    sget-object v3, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v3, v3, v14

    aget v3, v3, v15

    mul-float/2addr v1, v3

    sub-float/2addr v13, v1

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p2

    move/from16 v1, v19

    goto/16 :goto_3

    :cond_2
    move/from16 v19, v1

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p2

    goto/16 :goto_2

    :cond_3
    move/from16 v19, v1

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    iget v1, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 p1, v2

    float-to-double v1, v1

    sub-double/2addr v14, v1

    float-to-double v1, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v1, v1, v16

    float-to-double v3, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v3, v3, v16

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/hardware/GeomagneticField;->mX:F

    iput v12, v0, Landroid/hardware/GeomagneticField;->mY:F

    neg-float v1, v10

    float-to-double v1, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    float-to-double v3, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v3, v3, v16

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/hardware/GeomagneticField;->mZ:F

    return-void
.end method

.method private greylist-max-o computeGeocentricCoordinates(FFF)V
    .locals 16

    move-object/from16 v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, p3, v1

    const v2, 0x4c1b2f2f    # 4.0680636E7f

    const v3, 0x4c1a253b    # 4.04083E7f

    move/from16 v4, p1

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v9, v8, v7

    mul-float v10, v2, v7

    mul-float/2addr v10, v7

    mul-float v11, v3, v8

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v11, v10, v1

    add-float/2addr v11, v3

    mul-float/2addr v11, v9

    mul-float v12, v10, v1

    add-float/2addr v12, v2

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    double-to-float v11, v11

    iput v11, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v11, p2

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    mul-float v12, v1, v1

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float v14, v2, v7

    mul-float/2addr v14, v7

    mul-float v15, v3, v8

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float v13, v2, v2

    mul-float/2addr v13, v7

    mul-float/2addr v13, v7

    mul-float v14, v3, v3

    mul-float/2addr v14, v8

    mul-float/2addr v14, v8

    add-float/2addr v13, v14

    mul-float v14, v2, v7

    mul-float/2addr v14, v7

    mul-float v15, v3, v8

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    iput v13, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    return-void
.end method

.method private static greylist-max-o computeSchmidtQuasiNormFactors(I)[[F
    .locals 9

    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [[F

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    const/4 v2, 0x1

    :goto_0
    if-gt v2, p0, :cond_2

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [F

    aput-object v3, v0, v2

    aget-object v3, v0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v5, v0, v5

    aget v5, v5, v4

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v6, v1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v3, 0x1

    :goto_1
    if-gt v3, v2, :cond_1

    aget-object v5, v0, v2

    aget-object v6, v0, v2

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    sub-int v7, v2, v3

    add-int/2addr v7, v1

    if-ne v3, v1, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :cond_0
    move v8, v1

    :goto_2
    mul-int/2addr v7, v8

    int-to-float v7, v7

    add-int v8, v2, v3

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public whitelist getDeclination()F
    .locals 4

    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getFieldStrength()F
    .locals 3

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    iget v1, p0, Landroid/hardware/GeomagneticField;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mZ:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mZ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getHorizontalStrength()F
    .locals 4

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getInclination()F
    .locals 4

    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/hardware/GeomagneticField;->getHorizontalStrength()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getX()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    return v0
.end method

.method public whitelist getY()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    return v0
.end method

.method public whitelist getZ()F
    .locals 1

    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    return v0
.end method
