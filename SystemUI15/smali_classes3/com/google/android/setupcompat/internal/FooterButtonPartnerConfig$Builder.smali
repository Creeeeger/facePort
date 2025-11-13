.class public final Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonDisableTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonMarginStartConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonMinHeight:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public buttonTextWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public partnerTheme:I


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonMarginStartConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonMinHeight:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    iput p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->partnerTheme:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    .locals 19

    move-object/from16 v0, p0

    new-instance v18, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-object/from16 v1, v18

    iget v2, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->partnerTheme:I

    iget-object v3, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v4, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v5, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v6, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonDisableTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v7, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v8, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v9, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonMarginStartConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v10, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v11, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonMinHeight:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v12, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v13, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextWeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v14, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v15, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iget-object v0, v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;-><init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    return-object v18
.end method
