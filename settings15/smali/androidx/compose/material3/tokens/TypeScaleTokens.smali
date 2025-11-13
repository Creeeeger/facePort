.class public abstract Landroidx/compose/material3/tokens/TypeScaleTokens;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final BodyLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final BodyLargeLineHeight:J

.field public static final BodyLargeSize:J

.field public static final BodyLargeTracking:J

.field public static final BodyLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final BodyMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final BodyMediumLineHeight:J

.field public static final BodyMediumSize:J

.field public static final BodyMediumTracking:J

.field public static final BodyMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final BodySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final BodySmallLineHeight:J

.field public static final BodySmallSize:J

.field public static final BodySmallTracking:J

.field public static final BodySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final DisplayLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final DisplayLargeLineHeight:J

.field public static final DisplayLargeSize:J

.field public static final DisplayLargeTracking:J

.field public static final DisplayLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final DisplayMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final DisplayMediumLineHeight:J

.field public static final DisplayMediumSize:J

.field public static final DisplayMediumTracking:J

.field public static final DisplayMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final DisplaySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final DisplaySmallLineHeight:J

.field public static final DisplaySmallSize:J

.field public static final DisplaySmallTracking:J

.field public static final DisplaySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final HeadlineLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final HeadlineLargeLineHeight:J

.field public static final HeadlineLargeSize:J

.field public static final HeadlineLargeTracking:J

.field public static final HeadlineLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final HeadlineMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final HeadlineMediumLineHeight:J

.field public static final HeadlineMediumSize:J

.field public static final HeadlineMediumTracking:J

.field public static final HeadlineMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final HeadlineSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final HeadlineSmallLineHeight:J

.field public static final HeadlineSmallSize:J

.field public static final HeadlineSmallTracking:J

.field public static final HeadlineSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final LabelLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final LabelLargeLineHeight:J

.field public static final LabelLargeSize:J

.field public static final LabelLargeTracking:J

.field public static final LabelLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final LabelMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final LabelMediumLineHeight:J

.field public static final LabelMediumSize:J

.field public static final LabelMediumTracking:J

.field public static final LabelMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final LabelSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final LabelSmallLineHeight:J

.field public static final LabelSmallSize:J

.field public static final LabelSmallTracking:J

.field public static final LabelSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final TitleLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final TitleLargeLineHeight:J

.field public static final TitleLargeSize:J

.field public static final TitleLargeTracking:J

.field public static final TitleLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final TitleMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final TitleMediumLineHeight:J

.field public static final TitleMediumSize:J

.field public static final TitleMediumTracking:J

.field public static final TitleMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

.field public static final TitleSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final TitleSmallLineHeight:J

.field public static final TitleSmallSize:J

.field public static final TitleSmallTracking:J

.field public static final TitleSmallWeight:Landroidx/compose/ui/text/font/FontWeight;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    sget-object v0, Landroidx/compose/material3/tokens/TypefaceTokens;->WeightMedium:Landroidx/compose/ui/text/font/FontWeight;

    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v1, 0x4038000000000000L    # 24.0

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v3

    sput-wide v3, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeLineHeight:J

    const/16 v3, 0x10

    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    sput-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeSize:J

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v6

    sput-wide v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeTracking:J

    sget-object v6, Landroidx/compose/material3/tokens/TypefaceTokens;->WeightRegular:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v9

    sput-wide v9, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumLineHeight:J

    const/16 v9, 0xe

    invoke-static {v9}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v10

    sput-wide v10, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumSize:J

    const-wide v10, 0x3fc999999999999aL    # 0.2

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v12

    sput-wide v12, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v14

    sput-wide v14, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallLineHeight:J

    const/16 v14, 0xc

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallSize:J

    const-wide v15, 0x3fd999999999999aL    # 0.4

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v15, 0x4050000000000000L    # 64.0

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeLineHeight:J

    const/16 v15, 0x39

    invoke-static {v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeSize:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_0

    const-wide v17, 0xff00000000L

    and-long v10, v15, v17

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v15

    neg-float v15, v15

    invoke-static {v15, v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v10

    sput-wide v10, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v10, 0x404a000000000000L    # 52.0

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v10

    sput-wide v10, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumLineHeight:J

    const/16 v10, 0x2d

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v10

    sput-wide v10, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumSize:J

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v15, 0x4046000000000000L    # 44.0

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallLineHeight:J

    const/16 v15, 0x24

    invoke-static {v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallSize:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v15, 0x4044000000000000L    # 40.0

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeLineHeight:J

    const/16 v15, 0x20

    invoke-static {v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeSize:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v15, 0x4042000000000000L    # 36.0

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumLineHeight:J

    const/16 v15, 0x1c

    invoke-static {v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumSize:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v15, 0x4040000000000000L    # 32.0

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallLineHeight:J

    const/16 v15, 0x18

    invoke-static {v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallSize:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeLineHeight:J

    invoke-static {v9}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v15

    sput-wide v15, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeSize:J

    const-wide v15, 0x3fb999999999999aL    # 0.1

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v17

    sput-wide v17, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeTracking:J

    sget-object v17, Landroidx/compose/material3/tokens/TypefaceTokens;->WeightMedium:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v17, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v19

    sput-wide v19, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumLineHeight:J

    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v19

    sput-wide v19, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumSize:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v19

    sput-wide v19, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumTracking:J

    sput-object v17, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v12

    sput-wide v12, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallLineHeight:J

    const/16 v12, 0xb

    invoke-static {v12}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v12

    sput-wide v12, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallSize:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v4

    sput-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallTracking:J

    sput-object v17, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    const-wide/high16 v4, 0x403c000000000000L    # 28.0

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v4

    sput-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeLineHeight:J

    const/16 v4, 0x16

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    sput-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeSize:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v4

    sput-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeTracking:J

    sput-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumLineHeight:J

    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumSize:J

    const-wide v1, 0x3fc999999999999aL    # 0.2

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v1

    sput-wide v1, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumTracking:J

    sput-object v17, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallLineHeight:J

    invoke-static {v9}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallSize:J

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallTracking:J

    sput-object v17, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot perform operation for Unspecified type."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
