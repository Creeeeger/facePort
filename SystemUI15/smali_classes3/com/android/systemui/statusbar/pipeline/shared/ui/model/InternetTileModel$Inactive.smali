.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;


# instance fields
.field public final contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

.field public final icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public final iconId:Ljava/lang/Integer;

.field public final secondaryLabel:Lcom/android/systemui/common/shared/model/Text;

.field public final secondaryTitle:Ljava/lang/CharSequence;

.field public final stateDescription:Lcom/android/systemui/common/shared/model/ContentDescription;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/plugins/qs/QSTile$Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/plugins/qs/QSTile$Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryLabel:Lcom/android/systemui/common/shared/model/Text;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->iconId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->stateDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/plugins/qs/QSTile$Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/plugins/qs/QSTile$Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryLabel:Lcom/android/systemui/common/shared/model/Text;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryLabel:Lcom/android/systemui/common/shared/model/Text;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->iconId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->iconId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->stateDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->stateDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getContentDescription()Lcom/android/systemui/common/shared/model/ContentDescription;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    return-object p0
.end method

.method public final getIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-object p0
.end method

.method public final getIconId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->iconId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSecondaryLabel()Lcom/android/systemui/common/shared/model/Text;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryLabel:Lcom/android/systemui/common/shared/model/Text;

    return-object p0
.end method

.method public final getSecondaryTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getStateDescription()Lcom/android/systemui/common/shared/model/ContentDescription;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->stateDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryLabel:Lcom/android/systemui/common/shared/model/Text;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->iconId:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->stateDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryTitle:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inactive(secondaryTitle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", secondaryLabel="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->secondaryLabel:Lcom/android/systemui/common/shared/model/Text;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", iconId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->iconId:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stateDescription="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->stateDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentDescription="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Inactive;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
