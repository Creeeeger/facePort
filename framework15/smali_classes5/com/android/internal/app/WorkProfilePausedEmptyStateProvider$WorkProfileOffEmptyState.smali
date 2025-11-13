.class public Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;
.super Ljava/lang/Object;
.source "WorkProfilePausedEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkProfileOffEmptyState"
.end annotation


# instance fields
.field private final blacklist mMetricsCategory:Ljava/lang/String;

.field private final blacklist mOnClick:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

.field private final blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mOnClick:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

    iput-object p3, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mMetricsCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getButtonClickListener()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mOnClick:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onEmptyStateShown()V
    .locals 2

    nop

    const/16 v0, 0x9d

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mMetricsCategory:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method
