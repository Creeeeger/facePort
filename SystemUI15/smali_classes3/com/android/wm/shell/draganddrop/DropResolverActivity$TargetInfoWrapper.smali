.class public final Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;


# instance fields
.field public final mOverrideActivityOptions:Landroid/os/Bundle;

.field public final mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public static create(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;-><init>(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public final cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/chooser/TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAllSourceIntents()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0, p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getExtendedInfo()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getResolvedComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getResolvedIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final isPinned()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result p0

    return p0
.end method

.method public final isSuspended()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result p0

    return p0
.end method

.method public final start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/chooser/TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/chooser/TargetInfo;->setSkipFixUris(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public final startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mOverrideActivityOptions:Landroid/os/Bundle;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/android/internal/app/chooser/TargetInfo;->setSkipFixUris(Z)V

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mTargetInfo:Lcom/android/internal/app/chooser/TargetInfo;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {p3, p1, p2, p0}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
