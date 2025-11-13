.class public final Lcom/android/systemui/media/taptotransfer/common/IconInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

.field public final icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

.field public final isAppIcon:Z

.field public final tint:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;Ljava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/taptotransfer/common/IconInfo;Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;ZI)Lcom/android/systemui/media/taptotransfer/common/IconInfo;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    :cond_2
    new-instance p4, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    invoke-direct {p4, p1, p2, p0, p3}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;-><init>(Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;Ljava/lang/Integer;Z)V

    return-object p4
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    iget-object v1, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    iget-object v3, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    iget-object v3, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconInfo(contentDescription="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAppIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toTintedIcon()Lcom/android/systemui/common/shared/model/TintedIcon;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    instance-of v1, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    check-cast v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;

    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Resource;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    check-cast v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Resource;

    iget v0, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Resource;->res:I

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_0
    new-instance v0, Lcom/android/systemui/common/shared/model/TintedIcon;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/common/shared/model/TintedIcon;-><init>(Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
