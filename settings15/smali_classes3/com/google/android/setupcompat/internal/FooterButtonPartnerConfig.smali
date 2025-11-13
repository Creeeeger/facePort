.class public final Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonDisableTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonMarginStartConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final buttonTextWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public final partnerTheme:I


# direct methods
.method public constructor <init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 9

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_WEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_STYLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->partnerTheme:I

    iput-object p5, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p6, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMarginStartConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v2, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v3, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v4, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v5, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v6, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p2, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p3, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v7, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p4, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v8, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-void
.end method
