.class public final Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppRecord;


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final canDisplay:Z

.field public final suggested:Z

.field public final userOverride:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IZZ)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->app:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->userOverride:I

    iput-boolean p3, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->suggested:Z

    iput-boolean p4, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->canDisplay:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;

    iget-object v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->userOverride:I

    iget v3, p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->userOverride:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->suggested:Z

    iget-boolean v3, p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->suggested:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->canDisplay:Z

    iget-boolean p1, p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->canDisplay:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getApp()Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->app:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->userOverride:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->suggested:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->canDisplay:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->app:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserAspectRatioAppListItemModel(app="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", userOverride="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->userOverride:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", suggested="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->suggested:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canDisplay="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->canDisplay:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
