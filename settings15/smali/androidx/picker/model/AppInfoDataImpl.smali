.class public final Landroidx/picker/model/AppInfoDataImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/model/AppInfoData;


# instance fields
.field public final actionIcon:Landroid/graphics/drawable/Drawable;

.field public final appInfo:Landroidx/picker/model/AppInfo;

.field public dimmed:Z

.field public final extraLabel:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final isValueInSubLabel:Z

.field public final itemType:I

.field public label:Ljava/lang/String;

.field public selected:Z

.field public final subIcon:Landroid/graphics/drawable/Drawable;

.field public subLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfo;)V
    .locals 13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x7fe

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZI)V

    return-void
.end method

.method public constructor <init>(Landroidx/picker/model/AppInfo;I)V
    .locals 13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x7fc

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v12}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZI)V

    return-void
.end method

.method public constructor <init>(Landroidx/picker/model/AppInfo;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZI)V
    .locals 3

    and-int/lit8 v0, p12, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p12, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object p3, v2

    :cond_1
    and-int/lit8 v0, p12, 0x8

    if-eqz v0, :cond_2

    move-object p4, v2

    :cond_2
    and-int/lit8 v0, p12, 0x10

    if-eqz v0, :cond_3

    move-object p5, v2

    :cond_3
    and-int/lit8 v0, p12, 0x20

    if-eqz v0, :cond_4

    move-object p6, v2

    :cond_4
    and-int/lit8 v0, p12, 0x40

    if-eqz v0, :cond_5

    move-object p7, v2

    :cond_5
    and-int/lit16 v0, p12, 0x80

    if-eqz v0, :cond_6

    move-object p8, v2

    :cond_6
    and-int/lit16 v0, p12, 0x100

    if-eqz v0, :cond_7

    move p9, v1

    :cond_7
    and-int/lit16 v0, p12, 0x200

    if-eqz v0, :cond_8

    move p10, v1

    :cond_8
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_9

    move p11, v1

    :cond_9
    const-string p12, "appInfo"

    invoke-static {p1, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/AppInfoDataImpl;->appInfo:Landroidx/picker/model/AppInfo;

    iput p2, p0, Landroidx/picker/model/AppInfoDataImpl;->itemType:I

    iput-object p3, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroidx/picker/model/AppInfoDataImpl;->subIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    iput-object p6, p0, Landroidx/picker/model/AppInfoDataImpl;->subLabel:Ljava/lang/String;

    iput-object p7, p0, Landroidx/picker/model/AppInfoDataImpl;->extraLabel:Ljava/lang/String;

    iput-object p8, p0, Landroidx/picker/model/AppInfoDataImpl;->actionIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p9, p0, Landroidx/picker/model/AppInfoDataImpl;->selected:Z

    iput-boolean p10, p0, Landroidx/picker/model/AppInfoDataImpl;->dimmed:Z

    iput-boolean p11, p0, Landroidx/picker/model/AppInfoDataImpl;->isValueInSubLabel:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Landroidx/picker/model/AppInfoDataImpl;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.picker.model.AppInfoDataImpl"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/picker/model/AppInfoDataImpl;

    iget-object v1, p0, Landroidx/picker/model/AppInfoDataImpl;->appInfo:Landroidx/picker/model/AppInfo;

    iget-object v3, p1, Landroidx/picker/model/AppInfoDataImpl;->appInfo:Landroidx/picker/model/AppInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/picker/model/AppInfoDataImpl;->itemType:I

    iget v3, p1, Landroidx/picker/model/AppInfoDataImpl;->itemType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/picker/model/AppInfoDataImpl;->subIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Landroidx/picker/model/AppInfoDataImpl;->subIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    iget-object v3, p1, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/picker/model/AppInfoDataImpl;->subLabel:Ljava/lang/String;

    iget-object v3, p1, Landroidx/picker/model/AppInfoDataImpl;->subLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/picker/model/AppInfoDataImpl;->extraLabel:Ljava/lang/String;

    iget-object v3, p1, Landroidx/picker/model/AppInfoDataImpl;->extraLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/picker/model/AppInfoDataImpl;->actionIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Landroidx/picker/model/AppInfoDataImpl;->actionIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Landroidx/picker/model/AppInfoDataImpl;->selected:Z

    iget-boolean v3, p1, Landroidx/picker/model/AppInfoDataImpl;->selected:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Landroidx/picker/model/AppInfoDataImpl;->dimmed:Z

    iget-boolean v3, p1, Landroidx/picker/model/AppInfoDataImpl;->dimmed:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean p0, p0, Landroidx/picker/model/AppInfoDataImpl;->isValueInSubLabel:Z

    iget-boolean p1, p1, Landroidx/picker/model/AppInfoDataImpl;->isValueInSubLabel:Z

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getActionIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->actionIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getAppInfo()Landroidx/picker/model/AppInfo;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->appInfo:Landroidx/picker/model/AppInfo;

    return-object p0
.end method

.method public final getDimmed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/picker/model/AppInfoDataImpl;->dimmed:Z

    return p0
.end method

.method public final getExtraLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->extraLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getItemType()I
    .locals 0

    iget p0, p0, Landroidx/picker/model/AppInfoDataImpl;->itemType:I

    return p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelected()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/picker/model/AppInfoDataImpl;->selected:Z

    return p0
.end method

.method public final getSubIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->subIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getSubLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->subLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/picker/model/AppInfoDataImpl;->appInfo:Landroidx/picker/model/AppInfo;

    invoke-virtual {v0}, Landroidx/picker/model/AppInfo;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/picker/model/AppInfoDataImpl;->itemType:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/picker/model/AppInfoDataImpl;->subIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/picker/model/AppInfoDataImpl;->subLabel:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/picker/model/AppInfoDataImpl;->extraLabel:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/picker/model/AppInfoDataImpl;->actionIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/picker/model/AppInfoDataImpl;->selected:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Landroidx/picker/model/AppInfoDataImpl;->dimmed:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Landroidx/picker/model/AppInfoDataImpl;->isValueInSubLabel:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isValueInSubLabel()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/picker/model/AppInfoDataImpl;->isValueInSubLabel:Z

    return p0
.end method

.method public final setDimmed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/picker/model/AppInfoDataImpl;->dimmed:Z

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    return-void
.end method

.method public final setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/picker/model/AppInfoDataImpl;->selected:Z

    return-void
.end method

.method public final setSubLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppInfoDataImpl;->subLabel:Ljava/lang/String;

    return-void
.end method
