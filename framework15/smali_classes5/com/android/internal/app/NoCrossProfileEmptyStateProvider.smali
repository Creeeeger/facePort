.class public Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;
.super Ljava/lang/Object;
.source "NoCrossProfileEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;
    }
.end annotation


# instance fields
.field private final blacklist mCrossProfileIntentsChecker:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

.field private final blacklist mNoPersonalToWorkEmptyState:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

.field private final blacklist mNoWorkToPersonalEmptyState:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

.field private final blacklist mPersonalProfileUserHandle:Landroid/os/UserHandle;

.field private final blacklist mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/UserHandle;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mNoWorkToPersonalEmptyState:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    iput-object p3, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mNoPersonalToWorkEmptyState:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    iput-object p4, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mCrossProfileIntentsChecker:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    iput-object p5, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public blacklist getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mCrossProfileIntentsChecker:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getIntents()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;->hasCrossProfileIntents(Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mNoWorkToPersonalEmptyState:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;->mNoPersonalToWorkEmptyState:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    return-object v1
.end method
