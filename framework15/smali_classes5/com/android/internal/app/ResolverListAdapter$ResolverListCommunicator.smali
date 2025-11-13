.class interface abstract Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ResolverListCommunicator"
.end annotation


# virtual methods
.method public abstract blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract blacklist getTargetIntent()Landroid/content/Intent;
.end method

.method public abstract blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method public abstract blacklist onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V
.end method

.method public abstract blacklist resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
.end method

.method public abstract blacklist semGetAppIconTheme()Ljava/lang/String;
.end method

.method public abstract blacklist semGetOldItemCount()I
.end method

.method public abstract blacklist semIsDestroyed()Z
.end method

.method public abstract blacklist semIsFinishing()Z
.end method

.method public abstract blacklist semIsNeedSortingInRebuildList()Z
.end method

.method public abstract blacklist semIsOverlayThemesEnabled()Z
.end method

.method public abstract blacklist semIsSupportsAlwaysUseOption()Z
.end method

.method public abstract blacklist semNeedSortAfterPinned()Z
.end method

.method public abstract blacklist semOnForceHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method public abstract blacklist semSetNeedSortAfterPinned(Z)V
.end method

.method public abstract blacklist semSetNeedSortingInRebuildList(Z)V
.end method

.method public abstract blacklist sendVoiceChoicesIfNeeded()V
.end method

.method public abstract blacklist shouldGetActivityMetadata()Z
.end method

.method public blacklist shouldGetOnlyDefaultActivities()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract blacklist updateProfileViewButton()V
.end method

.method public abstract blacklist useLayoutWithDefault()Z
.end method
