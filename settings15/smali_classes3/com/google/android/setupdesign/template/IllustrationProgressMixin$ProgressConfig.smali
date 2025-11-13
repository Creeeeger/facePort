.class public final enum Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;


# instance fields
.field private final config:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_PROGRESS_ILLUSTRATION_DEFAULT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const-string v2, "CONFIG_DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;-><init>(Ljava/lang/String;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    new-instance v1, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_PROGRESS_ILLUSTRATION_ACCOUNT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const-string v3, "CONFIG_ACCOUNT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;-><init>(Ljava/lang/String;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    new-instance v2, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_PROGRESS_ILLUSTRATION_CONNECTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const-string v4, "CONFIG_CONNECTION"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;-><init>(Ljava/lang/String;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    new-instance v3, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_PROGRESS_ILLUSTRATION_UPDATE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const-string v5, "CONFIG_UPDATE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;-><init>(Ljava/lang/String;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;->$VALUES:[Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object p1

    sget-object p2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->ILLUSTRATION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne p1, p2, :cond_0

    iput-object p3, p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;->config:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illustration progress only allow illustration resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;
    .locals 1

    const-class v0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    return-object p0
.end method

.method public static values()[Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;
    .locals 1

    sget-object v0, Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;->$VALUES:[Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    invoke-virtual {v0}, [Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupdesign/template/IllustrationProgressMixin$ProgressConfig;

    return-object v0
.end method
