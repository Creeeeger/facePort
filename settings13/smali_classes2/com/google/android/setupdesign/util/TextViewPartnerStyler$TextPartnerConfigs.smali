.class public Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
.super Ljava/lang/Object;
.source "TextViewPartnerStyler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextPartnerConfigs"
.end annotation


# instance fields
.field private final textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textGravity:I

.field private final textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 180
    iput-object p2, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 181
    iput-object p3, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 182
    iput-object p4, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 183
    iput-object p5, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 184
    iput-object p6, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 185
    iput-object p7, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 186
    iput p8, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    return-void
.end method


# virtual methods
.method public getLinkTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextGravity()I
    .locals 0

    .line 218
    iget p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    return p0
.end method

.method public getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextMarginBottom()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginBottomConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextMarginTop()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textMarginTopConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method
