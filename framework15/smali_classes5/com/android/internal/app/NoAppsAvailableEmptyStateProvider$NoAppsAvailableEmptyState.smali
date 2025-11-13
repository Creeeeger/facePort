.class public Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;
.super Ljava/lang/Object;
.source "NoAppsAvailableEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoAppsAvailableEmptyState"
.end annotation


# instance fields
.field private blacklist mIsPersonalProfile:Z

.field private blacklist mMetricsCategory:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mMetricsCategory:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mIsPersonalProfile:Z

    return-void
.end method


# virtual methods
.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onEmptyStateShown()V
    .locals 2

    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mMetricsCategory:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mIsPersonalProfile:Z

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method
