.class public final Lcom/android/systemui/monet/CustomDynamicColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mMdc:Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;

    invoke-direct {v0, p1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;-><init>(Z)V

    iput-object v0, p0, Lcom/android/systemui/monet/CustomDynamicColors;->mMdc:Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;

    return-void
.end method

.method public static themeAppRing()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/16 v0, 0x9

    invoke-direct {v2, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v1, "theme_app_ring"

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public static underSurface()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 10

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v0, 0x1c

    invoke-direct {v2, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v0, 0x1d

    invoke-direct {v3, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v1, "under_surface"

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public static widgetBackground()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 10

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {v2, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {v3, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v1, "widget_background"

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method


# virtual methods
.method public final brandA()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x10

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x11

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0xc

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4031000000000000L    # 17.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0xd

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "brand_a"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final brandB()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0xa

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0xb

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "brand_b"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final brandC()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "brand_c"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final brandD()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    const-wide/high16 v17, 0x402a000000000000L    # 13.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/4 v1, 0x5

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "brand_d"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final clockHour()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    const-wide/high16 v17, 0x402e000000000000L    # 15.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0xe

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "clock_hour"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final clockMinute()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    move-object/from16 v1, p0

    invoke-direct {v5, v1, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    const-wide/high16 v17, 0x402e000000000000L    # 15.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x401a000000000000L    # 6.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "clock_minute"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final onShadeActive()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/4 v1, 0x7

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/16 v1, 0x8

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x18

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x19

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "on_shade_active"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final onShadeActiveVariant()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0xa

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x8

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x9

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "on_shade_active_variant"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final onShadeInactive()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0xf

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x10

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "on_shade_inactive"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final onShadeInactiveVariant()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x17

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x18

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x13

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x14

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string v1, "on_shade_inactive_variant"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final shadeActive()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/4 v1, 0x6

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4012000000000000L    # 4.5

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/4 v1, 0x7

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string/jumbo v1, "shade_active"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final shadeDisabled()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v0, 0x13

    invoke-direct {v2, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v0, 0x14

    invoke-direct {v3, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v0, 0x11

    move-object/from16 v1, p0

    invoke-direct {v5, v1, v0}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string/jumbo v1, "shade_disabled"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final shadeInactive()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x1a

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x1b

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x15

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x16

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string/jumbo v1, "shade_inactive"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final themeNotif()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x19

    invoke-direct {v2, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x1a

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;

    const/16 v1, 0x1b

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/monet/CustomDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/CustomDynamicColors;I)V

    const-string/jumbo v1, "theme_notif"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method
