.class final Landroidx/compose/material3/TypographyKt$LocalTypography$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material3/Typography;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/TypographyKt$LocalTypography$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/TypographyKt$LocalTypography$1;

    invoke-direct {v0}, Landroidx/compose/material3/TypographyKt$LocalTypography$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/TypographyKt$LocalTypography$1;->INSTANCE:Landroidx/compose/material3/TypographyKt$LocalTypography$1;

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
    .locals 17

    new-instance v16, Landroidx/compose/material3/Typography;

    sget-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v2, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v3, Landroidx/compose/material3/tokens/TypographyTokens;->DisplaySmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v4, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v5, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v6, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/material3/tokens/TypographyTokens;->TitleLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v8, Landroidx/compose/material3/tokens/TypographyTokens;->TitleMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v9, Landroidx/compose/material3/tokens/TypographyTokens;->TitleSmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v10, Landroidx/compose/material3/tokens/TypographyTokens;->BodyLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v11, Landroidx/compose/material3/tokens/TypographyTokens;->BodyMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v12, Landroidx/compose/material3/tokens/TypographyTokens;->BodySmall:Landroidx/compose/ui/text/TextStyle;

    sget-object v13, Landroidx/compose/material3/tokens/TypographyTokens;->LabelLarge:Landroidx/compose/ui/text/TextStyle;

    sget-object v14, Landroidx/compose/material3/tokens/TypographyTokens;->LabelMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v15, Landroidx/compose/material3/tokens/TypographyTokens;->LabelSmall:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V

    return-object v16
.end method
