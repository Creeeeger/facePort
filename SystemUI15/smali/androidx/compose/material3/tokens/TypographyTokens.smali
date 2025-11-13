.class public final Landroidx/compose/material3/tokens/TypographyTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BodyLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final BodyMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final BodySmall:Landroidx/compose/ui/text/TextStyle;

.field public static final DisplayLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final DisplayMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final DisplaySmall:Landroidx/compose/ui/text/TextStyle;

.field public static final HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/TypographyTokens;

.field public static final LabelLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final LabelMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final LabelSmall:Landroidx/compose/ui/text/TextStyle;

.field public static final TitleLarge:Landroidx/compose/ui/text/TextStyle;

.field public static final TitleMedium:Landroidx/compose/ui/text/TextStyle;

.field public static final TitleSmall:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Landroidx/compose/material3/tokens/TypographyTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/TypographyTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/TypographyTokens;->INSTANCE:Landroidx/compose/material3/tokens/TypographyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/TypographyTokensKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    sget-object v16, Landroidx/compose/material3/tokens/TypeScaleTokens;->INSTANCE:Landroidx/compose/material3/tokens/TypeScaleTokens;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyLargeTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->BodyLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodyMediumTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->BodyMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->BodySmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayLargeTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplayMediumTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->DisplaySmallTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplaySmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineLargeTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineMediumTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->HeadlineSmallTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelLargeTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelMediumTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->LabelSmallTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelSmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleLargeTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->TitleLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleMediumTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->TitleMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallFont:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v6, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v4, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallSize:J

    sget-wide v11, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallLineHeight:J

    sget-wide v8, Landroidx/compose/material3/tokens/TypeScaleTokens;->TitleSmallTracking:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const v15, 0xfdff59

    move-object v1, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/TypographyTokens;->TitleSmall:Landroidx/compose/ui/text/TextStyle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
