.class public final Lcom/android/compose/theme/typography/TypeScaleTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bodyLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final bodyLargeLineHeight:J

.field public final bodyLargeSize:J

.field public final bodyLargeTracking:J

.field public final bodyLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final bodyMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final bodyMediumLineHeight:J

.field public final bodyMediumSize:J

.field public final bodyMediumTracking:J

.field public final bodyMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final bodySmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final bodySmallLineHeight:J

.field public final bodySmallSize:J

.field public final bodySmallTracking:J

.field public final bodySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final displayLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final displayLargeLineHeight:J

.field public final displayLargeSize:J

.field public final displayLargeTracking:J

.field public final displayLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final displayMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final displayMediumLineHeight:J

.field public final displayMediumSize:J

.field public final displayMediumTracking:J

.field public final displayMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final displaySmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final displaySmallLineHeight:J

.field public final displaySmallSize:J

.field public final displaySmallTracking:J

.field public final displaySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final headlineLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final headlineLargeLineHeight:J

.field public final headlineLargeSize:J

.field public final headlineLargeTracking:J

.field public final headlineLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final headlineMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final headlineMediumLineHeight:J

.field public final headlineMediumSize:J

.field public final headlineMediumTracking:J

.field public final headlineMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final headlineSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final headlineSmallLineHeight:J

.field public final headlineSmallSize:J

.field public final headlineSmallTracking:J

.field public final headlineSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final labelLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final labelLargeLineHeight:J

.field public final labelLargeSize:J

.field public final labelLargeTracking:J

.field public final labelLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final labelMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final labelMediumLineHeight:J

.field public final labelMediumSize:J

.field public final labelMediumTracking:J

.field public final labelMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final labelSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final labelSmallLineHeight:J

.field public final labelSmallSize:J

.field public final labelSmallTracking:J

.field public final labelSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final titleLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final titleLargeLineHeight:J

.field public final titleLargeSize:J

.field public final titleLargeTracking:J

.field public final titleLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final titleMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final titleMediumLineHeight:J

.field public final titleMediumSize:J

.field public final titleMediumTracking:J

.field public final titleMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public final titleSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final titleSmallLineHeight:J

.field public final titleSmallSize:J

.field public final titleSmallTracking:J

.field public final titleSmallWeight:Landroidx/compose/ui/text/font/FontWeight;


# direct methods
.method public constructor <init>(Lcom/android/compose/theme/typography/TypefaceTokens;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Lcom/android/compose/theme/typography/TypefaceTokens;->plain:Landroidx/compose/ui/text/font/FontListFontFamily;

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeLineHeight:J

    const/16 v5, 0x10

    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeSize:J

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeTracking:J

    sget-object v8, Lcom/android/compose/theme/typography/TypefaceTokens;->Companion:Lcom/android/compose/theme/typography/TypefaceTokens$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/compose/theme/typography/TypefaceTokens;->WeightRegular:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumLineHeight:J

    const/16 v11, 0xe

    invoke-static {v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodyMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallLineHeight:J

    const/16 v14, 0xc

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallSize:J

    const-wide v3, 0x3fb999999999999aL    # 0.1

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->bodySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v1, v1, Lcom/android/compose/theme/typography/TypefaceTokens;->brand:Landroidx/compose/ui/text/font/FontListFontFamily;

    iput-object v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v14, 0x4050000000000000L    # 64.0

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeLineHeight:J

    const/16 v14, 0x39

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v14, 0x404a000000000000L    # 52.0

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumLineHeight:J

    const/16 v14, 0x2d

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displayMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v14, 0x4046000000000000L    # 44.0

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallLineHeight:J

    const/16 v14, 0x24

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->displaySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeLineHeight:J

    const/16 v14, 0x20

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v14, 0x4042000000000000L    # 36.0

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumLineHeight:J

    const/16 v14, 0x1c

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v14, 0x4040000000000000L    # 32.0

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallLineHeight:J

    const/16 v14, 0x18

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->headlineSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeLineHeight:J

    invoke-static {v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeTracking:J

    sget-object v14, Lcom/android/compose/theme/typography/TypefaceTokens;->WeightMedium:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumLineHeight:J

    const/16 v9, 0xc

    invoke-static {v9}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumSize:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumTracking:J

    iput-object v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallLineHeight:J

    const/16 v9, 0xb

    invoke-static {v9}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallSize:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallTracking:J

    iput-object v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->labelSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v3, 0x403c000000000000L    # 28.0

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeLineHeight:J

    const/16 v1, 0x16

    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeTracking:J

    iput-object v8, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumLineHeight:J

    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumTracking:J

    iput-object v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    iput-object v2, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallFont:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallLineHeight:J

    invoke-static {v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallSize:J

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallTracking:J

    iput-object v14, v0, Lcom/android/compose/theme/typography/TypeScaleTokens;->titleSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    return-void
.end method
