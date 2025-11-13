.class public interface abstract Landroidx/picker/model/AppInfoData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/model/AppData;


# virtual methods
.method public abstract getActionIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object p0

    iget-object p0, p0, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getDimmed()Z
.end method

.method public abstract getExtraLabel()Ljava/lang/String;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getItemType()I
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object p0

    iget-object p0, p0, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getSelected()Z
.end method

.method public abstract getSubIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSubLabel()Ljava/lang/String;
.end method

.method public abstract isValueInSubLabel()Z
.end method

.method public abstract setDimmed(Z)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLabel(Ljava/lang/String;)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setSubLabel(Ljava/lang/String;)V
.end method
