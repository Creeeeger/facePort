.class public Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileDescriptor"
.end annotation


# instance fields
.field private blacklist mEmptyStateView:Landroid/view/ViewGroup;

.field public final blacklist rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->mEmptyStateView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v0, 0x10204ef

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->mEmptyStateView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected blacklist getEmptyStateView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->mEmptyStateView:Landroid/view/ViewGroup;

    return-object v0
.end method
