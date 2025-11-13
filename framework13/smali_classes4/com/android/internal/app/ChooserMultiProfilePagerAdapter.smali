.class public Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    }
.end annotation


# static fields
.field private static final blacklist SINGLE_CELL_SPAN_SIZE:I = 0x1


# instance fields
.field private blacklist mBottomOffset:I

.field private final blacklist mIsSendAction:Z

.field private final blacklist mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

.field private blacklist mMaxTargetsPerRow:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p4, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p5, "isSendAction"    # Z
    .param p6, "maxTargetsPerRow"    # I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 66
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 67
    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 69
    iput-boolean p5, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    .line 70
    iput p6, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 71
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "workAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p4, "defaultProfile"    # I
    .param p5, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p6, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p7, "isSendAction"    # Z
    .param p8, "maxTargetsPerRow"    # I

    .line 80
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 83
    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 84
    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 86
    iput-boolean p7, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    .line 87
    iput p8, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 88
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "workAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p4, "personalPreloadAppAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p5, "personalDirectShareAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p6, "personalRankedAppAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p7, "workPreloadAppAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p8, "workDirectShareAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p9, "workRankedAppAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p10, "defaultProfile"    # I
    .param p11, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p12, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p13, "isSendAction"    # Z
    .param p14, "maxTargetsPerRow"    # I

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 122
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 123
    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v5, v11

    .line 124
    move-object/from16 v10, p3

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v5, v15

    iput-object v5, v0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 126
    move/from16 v5, p13

    iput-boolean v5, v0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    .line 127
    move/from16 v14, p14

    iput v14, v0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 128
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p3, "preloadAppAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p4, "directShareAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p5, "rankedAppAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p6, "personalProfileUserHandle"    # Landroid/os/UserHandle;
    .param p7, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p8, "isSendAction"    # Z
    .param p9, "maxTargetsPerRow"    # I

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p6, p7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 100
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 101
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    .line 103
    iput-boolean p8, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    .line 104
    iput p9, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    .line 105
    return-void
.end method

.method private blacklist createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .locals 6
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 144
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 145
    const v1, 0x1090157

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 146
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    .line 148
    .local v2, "profileDescriptor":Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;

    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    .line 150
    return-object v2
.end method

.method private blacklist createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .locals 10
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p2, "preloadAppAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p3, "directShareAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p4, "rankedAppAdapter"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 135
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 136
    const v1, 0x1090156

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 137
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v9, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;)V

    return-object v9
.end method

.method private blacklist getCantAccessPersonalMessage()Ljava/lang/String;
    .locals 3

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantAccessWorkMessage()Ljava/lang/String;
    .locals 3

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantShareWithPersonalMessage()Ljava/lang/String;
    .locals 3

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantShareWithWorkMessage()Ljava/lang/String;
    .locals 3

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCrossProfileBlockedTitle()Ljava/lang/String;
    .locals 3

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNoPersonalAppsAvailableMessage()Ljava/lang/String;
    .locals 3

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_PERSONAL_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNoWorkAppsAvailableMessage()Ljava/lang/String;
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_WORK_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkAppPausedTitle()Ljava/lang/String;
    .locals 3

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist semNeedDisplayLandscape()Z
    .locals 3

    .line 527
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 528
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 529
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 528
    :goto_0
    return v1
.end method

.method private blacklist userHandleToPageIndex(Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x0

    return v0

    .line 404
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method bridge synthetic blacklist getActiveAdapterView()Landroid/view/ViewGroup;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 170
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getAdapterForIndex(I)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getCurrentRootAdapter()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method blacklist getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 159
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist getItemCount()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    .line 182
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method bridge synthetic blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .locals 1
    .param p1, "index"    # I

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getMetricsCategory()Ljava/lang/String;
    .locals 1

    .line 250
    const-string v0, "intent_chooser"

    return-object v0
.end method

.method public blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantAccessPersonalMessage$5$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040b87

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantAccessWorkMessage$4$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040b88

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantShareWithPersonalMessage$3$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040b89

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantShareWithWorkMessage$2$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040b8a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCrossProfileBlockedTitle$1$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040b8b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getNoPersonalAppsAvailableMessage$7$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040b8c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getNoWorkAppsAvailableMessage$6$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040b8d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getWorkAppPausedTitle$0$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040b91

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetActiveDirectShareAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetDirectShareListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetActivePreloadAppAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetPreloadAppListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetActiveRankedAppAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetRankedAppListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetCurrentRootDirectShareAdapter()Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetDirectShareAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetCurrentRootPreloadAppAdapter()Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetPreloadAppAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetCurrentRootRankedAppAdapter()Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetRankedAppAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist semGetDirectShareAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 445
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetdirectShareAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetDirectShareListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .locals 1
    .param p1, "index"    # I

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerViewForDirectShare(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetInactiveDirectShareAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 2

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 497
    const/4 v0, 0x0

    return-object v0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetDirectShareListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetInactivePreloadAppAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 2

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 490
    const/4 v0, 0x0

    return-object v0

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetPreloadAppListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetInactiveRankedAppAdapterView()Lcom/android/internal/widget/RecyclerView;
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 504
    const/4 v0, 0x0

    return-object v0

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->semGetRankedAppListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist semGetPreloadAppAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 441
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetpreloadAppAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetPreloadAppListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .locals 1
    .param p1, "index"    # I

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerViewForPreloadApp(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist semGetRankedAppAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 1
    .param p1, "pageIndex"    # I

    .line 449
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrankedAppAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    move-result-object v0

    return-object v0
.end method

.method blacklist semGetRankedAppListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .locals 1
    .param p1, "index"    # I

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerViewForRankedApp(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method blacklist semSetupHorizontalListAdapter(I)V
    .locals 8
    .param p1, "pageIndex"    # I

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerViewForPreloadApp(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 511
    .local v0, "recyclerViewForPreloadApp":Lcom/android/internal/widget/RecyclerView;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/GridLayoutManager;

    .line 512
    .local v1, "glmForPreloadApp":Lcom/android/internal/widget/GridLayoutManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 513
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/GridLayoutManager;->setOrientation(I)V

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerViewForDirectShare(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v4

    .line 516
    .local v4, "recyclerViewForDirectShare":Lcom/android/internal/widget/RecyclerView;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/GridLayoutManager;

    .line 517
    .local v5, "glmForDirectShare":Lcom/android/internal/widget/GridLayoutManager;
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 518
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/GridLayoutManager;->setOrientation(I)V

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerViewForRankedApp(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v6

    .line 521
    .local v6, "recyclerViewForRankedApp":Lcom/android/internal/widget/RecyclerView;
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/GridLayoutManager;

    .line 522
    .local v7, "glmForRankedApp":Lcom/android/internal/widget/GridLayoutManager;
    invoke-virtual {v7, v2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 523
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/GridLayoutManager;->setOrientation(I)V

    .line 524
    return-void
.end method

.method blacklist setEmptyStateBottomOffset(I)V
    .locals 0
    .param p1, "bottomOffset"    # I

    .line 355
    iput p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    .line 356
    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .locals 5
    .param p1, "container"    # Landroid/view/View;

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 362
    .local v0, "initialBottomPadding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    add-int/2addr v4, v0

    .line 362
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 364
    return-void
.end method

.method blacklist setupListAdapter(I)V
    .locals 4
    .param p1, "pageIndex"    # I

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 188
    .local v0, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    nop

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v1

    .line 190
    .local v1, "chooserGridAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager;

    .line 191
    .local v2, "glm":Lcom/android/internal/widget/GridLayoutManager;
    iget v3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 192
    new-instance v3, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 201
    return-void
.end method

.method protected blacklist showListView(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 7
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 411
    nop

    .line 412
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->userHandleToPageIndex(Landroid/os/UserHandle;)I

    move-result v0

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    .line 414
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x10204ea

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v3, 0x1020568

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 416
    .local v1, "preload":Landroid/view/View;
    iget-object v3, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v4, 0x1020566

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 417
    .local v3, "direct":Landroid/view/View;
    iget-object v4, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v5, 0x1020569

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 418
    .local v4, "ranked":Landroid/view/View;
    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :cond_0
    if-eqz v3, :cond_2

    .line 422
    iget-boolean v6, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v6, :cond_1

    instance-of v6, p1, Lcom/android/internal/app/ChooserListAdapter;

    if-eqz v6, :cond_1

    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/ChooserListAdapter;

    .line 423
    invoke-virtual {v6}, Lcom/android/internal/app/ChooserListAdapter;->semIsSupportDirectShare()Z

    move-result v6

    if-nez v6, :cond_1

    .line 424
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 429
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 430
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_3
    iget-object v5, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v6, 0x10204e3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 434
    .local v5, "emptyStateView":Landroid/view/View;
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .end local v0    # "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .end local v1    # "preload":Landroid/view/View;
    .end local v3    # "direct":Landroid/view/View;
    .end local v4    # "ranked":Landroid/view/View;
    .end local v5    # "emptyStateView":Landroid/view/View;
    return-void
.end method

.method protected blacklist showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 290
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getNoPersonalAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method protected blacklist showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v0, :cond_0

    .line 265
    nop

    .line 266
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantShareWithWorkMessage()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_0
    nop

    .line 270
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantAccessWorkMessage()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void
.end method

.method protected blacklist showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 296
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getNoWorkAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method protected blacklist showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v0, :cond_0

    .line 278
    nop

    .line 279
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantShareWithPersonalMessage()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_0
    nop

    .line 283
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantAccessPersonalMessage()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void
.end method

.method protected blacklist showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 256
    nop

    .line 257
    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getWorkAppPausedTitle()Ljava/lang/String;

    move-result-object v0

    .line 256
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 260
    return-void
.end method
