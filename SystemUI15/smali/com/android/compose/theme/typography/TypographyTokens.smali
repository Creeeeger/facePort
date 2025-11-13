.class public final Lcom/android/compose/theme/typography/TypographyTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bodyLarge:Landroidx/compose/ui/text/TextStyle;

.field public final bodyMedium:Landroidx/compose/ui/text/TextStyle;

.field public final bodySmall:Landroidx/compose/ui/text/TextStyle;

.field public final displayLarge:Landroidx/compose/ui/text/TextStyle;

.field public final displayMedium:Landroidx/compose/ui/text/TextStyle;

.field public final displaySmall:Landroidx/compose/ui/text/TextStyle;

.field public final headlineLarge:Landroidx/compose/ui/text/TextStyle;

.field public final headlineMedium:Landroidx/compose/ui/text/TextStyle;

.field public final headlineSmall:Landroidx/compose/ui/text/TextStyle;

.field public final labelLarge:Landroidx/compose/ui/text/TextStyle;

.field public final labelMedium:Landroidx/compose/ui/text/TextStyle;

.field public final labelSmall:Landroidx/compose/ui/text/TextStyle;

.field public final titleLarge:Landroidx/compose/ui/text/TextStyle;

.field public final titleMedium:Landroidx/compose/ui/text/TextStyle;

.field public final titleSmall:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public constructor <init>(Lcom/android/compose/theme/typography/TypeScaleTokens;)V
    .locals 67

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v10, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    new-instance v15, Landroidx/compose/ui/text/TextStyle;

    move-object v2, v15

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v3, 0x0

    iget-wide v5, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeSize:J

    iget-object v7, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-wide v12, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeTracking:J

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v34, v15

    move-object/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeLineHeight:J

    move-wide/from16 v24, v3

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v32, 0xfdff59

    const/16 v33, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v2 .. v33}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v34

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object v3, v2

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumSize:J

    iget-object v8, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const/4 v12, 0x0

    iget-wide v13, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumTracking:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-wide v4, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumLineHeight:J

    move-wide/from16 v25, v4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0xfdff59

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v35, v2

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v36, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallSize:J

    move-wide/from16 v38, v3

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object/from16 v40, v3

    const/16 v41, 0x0

    const/16 v42, 0x0

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    move-object/from16 v43, v3

    const/16 v44, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallTracking:J

    move-wide/from16 v45, v3

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallLineHeight:J

    move-wide/from16 v57, v3

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const v65, 0xfdff59

    const/16 v66, 0x0

    invoke-direct/range {v35 .. v66}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object v3, v2

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeSize:J

    iget-object v8, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const/4 v12, 0x0

    iget-wide v13, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeTracking:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-wide v4, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeLineHeight:J

    move-wide/from16 v25, v4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0xfdff59

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->displayLarge:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v35, v2

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v36, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumSize:J

    move-wide/from16 v38, v3

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object/from16 v40, v3

    const/16 v41, 0x0

    const/16 v42, 0x0

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    move-object/from16 v43, v3

    const/16 v44, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumTracking:J

    move-wide/from16 v45, v3

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumLineHeight:J

    move-wide/from16 v57, v3

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const v65, 0xfdff59

    const/16 v66, 0x0

    invoke-direct/range {v35 .. v66}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->displayMedium:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object v3, v2

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallSize:J

    iget-object v8, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const/4 v12, 0x0

    iget-wide v13, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallTracking:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-wide v4, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallLineHeight:J

    move-wide/from16 v25, v4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0xfdff59

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->displaySmall:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v35, v2

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v36, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeSize:J

    move-wide/from16 v38, v3

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object/from16 v40, v3

    const/16 v41, 0x0

    const/16 v42, 0x0

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    move-object/from16 v43, v3

    const/16 v44, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeTracking:J

    move-wide/from16 v45, v3

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeLineHeight:J

    move-wide/from16 v57, v3

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const v65, 0xfdff59

    const/16 v66, 0x0

    invoke-direct/range {v35 .. v66}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->headlineLarge:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object v3, v2

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumSize:J

    iget-object v8, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const/4 v12, 0x0

    iget-wide v13, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumTracking:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-wide v4, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumLineHeight:J

    move-wide/from16 v25, v4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0xfdff59

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->headlineMedium:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v35, v2

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v36, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallSize:J

    move-wide/from16 v38, v3

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object/from16 v40, v3

    const/16 v41, 0x0

    const/16 v42, 0x0

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    move-object/from16 v43, v3

    const/16 v44, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallTracking:J

    move-wide/from16 v45, v3

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallLineHeight:J

    move-wide/from16 v57, v3

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const v65, 0xfdff59

    const/16 v66, 0x0

    invoke-direct/range {v35 .. v66}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->headlineSmall:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object v3, v2

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeSize:J

    iget-object v8, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const/4 v12, 0x0

    iget-wide v13, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeTracking:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-wide v4, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeLineHeight:J

    move-wide/from16 v25, v4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0xfdff59

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v35, v2

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v36, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumSize:J

    move-wide/from16 v38, v3

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object/from16 v40, v3

    const/16 v41, 0x0

    const/16 v42, 0x0

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    move-object/from16 v43, v3

    const/16 v44, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumTracking:J

    move-wide/from16 v45, v3

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumLineHeight:J

    move-wide/from16 v57, v3

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const v65, 0xfdff59

    const/16 v66, 0x0

    invoke-direct/range {v35 .. v66}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object v3, v2

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallSize:J

    iget-object v8, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const/4 v12, 0x0

    iget-wide v13, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallTracking:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-wide v4, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallLineHeight:J

    move-wide/from16 v25, v4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0xfdff59

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->labelSmall:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v35, v2

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v36, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeSize:J

    move-wide/from16 v38, v3

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object/from16 v40, v3

    const/16 v41, 0x0

    const/16 v42, 0x0

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    move-object/from16 v43, v3

    const/16 v44, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeTracking:J

    move-wide/from16 v45, v3

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeLineHeight:J

    move-wide/from16 v57, v3

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const v65, 0xfdff59

    const/16 v66, 0x0

    invoke-direct/range {v35 .. v66}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object v3, v2

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v4, 0x0

    iget-wide v6, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumSize:J

    iget-object v8, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const/4 v12, 0x0

    iget-wide v13, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumTracking:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-wide v4, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumLineHeight:J

    move-wide/from16 v25, v4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0xfdff59

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v35, v2

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v36, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallSize:J

    move-wide/from16 v38, v3

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object/from16 v40, v3

    const/16 v41, 0x0

    const/16 v42, 0x0

    iget-object v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    move-object/from16 v43, v3

    const/16 v44, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallTracking:J

    move-wide/from16 v45, v3

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    iget-wide v3, v1, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallLineHeight:J

    move-wide/from16 v57, v3

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const v65, 0xfdff59

    const/16 v66, 0x0

    invoke-direct/range {v35 .. v66}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypographyTokens;->titleSmall:Landroidx/compose/ui/text/TextStyle;

    return-void
.end method
