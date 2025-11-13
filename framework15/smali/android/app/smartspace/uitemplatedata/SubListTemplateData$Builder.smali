.class public final Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.source "SubListTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/SubListTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSubListAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private blacklist mSubListIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private final blacklist mSubListTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListTexts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .locals 1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/SubListTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/app/smartspace/uitemplatedata/SubListTemplateData;
    .locals 13

    new-instance v12, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getTemplateType()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getLayoutWeight()I

    move-result v7

    iget-object v8, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v9, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListTexts:Ljava/util/List;

    iget-object v10, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Icon;Ljava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/SubListTemplateData-IA;)V

    return-object v12
.end method

.method public whitelist setSubListAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object p0
.end method

.method public whitelist setSubListIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object p0
.end method
