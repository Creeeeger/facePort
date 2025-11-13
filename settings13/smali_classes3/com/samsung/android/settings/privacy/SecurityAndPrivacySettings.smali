.class public Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "SecurityAndPrivacySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;
.implements Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnBindListener;
.implements Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;
.implements Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;,
        Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;,
        Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final DO_NOTHING_COMMAND:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field private mChildStateChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDPLastScannedTime:J

.field private mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mGPSuElapsedDays:J

.field private mGPSuMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field private mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightMenuKey:Ljava/lang/String;

.field private mIsAccountsMenuSupported:Z

.field private mIsAllowPhoneToBeFoundSupported:Z

.field private mIsAppSecuritySupported:Z

.field private mIsChinaModel:Z

.field private mIsDPSupported:Z

.field private mIsDeviceProtectionElapsed:Z

.field private mIsFMMEnabled:Z

.field private mIsFMMSupported:Z

.field private mIsFingerPrintSupported:Z

.field private mIsGPPSupported:Z

.field private mIsGPSuSupported:Z

.field private mIsGoogleAccountSignedIn:Z

.field private mIsGoogleAccountSupported:Z

.field private mIsLockScreenHiddenByMDM:Z

.field private mIsMDMEnabled:Z

.field private mIsOfflineFindingSupported:Z

.field private mIsSamsungAccountSignedIn:Z

.field private mIsSamsungAccountSupported:Z

.field private mIsScreenLockEnabled:Z

.field private mIsSecurityUpdateElapsed:Z

.field private mIsSecurityUpdateInstalled:Z

.field private mIsSecurityUpdateSupported:Z

.field private mIsUpdatesSupported:Z

.field private mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mOverallStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field private mScanStateProvider:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;

.field private mSecCardsPreference:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

.field private mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

.field private mStatusCards:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCommandFactory:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;

.field private final mStatusExpendableMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubToParentMenuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatesMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;


# direct methods
.method public static synthetic $r8$lambda$1bKahvANqWOa67j2CcjHE6kdlEM(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$closeChildMenuItems$18(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NYLICvFU95A-amR6w5E9-hFk0A(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$init$4(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5WnD-jBLOr4Fo7Vm5ro9sO211d4(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$refreshMenuItemsStatusWithVi$7(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Xwn26-98t4fFH7JqqWirlmauVI(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$setAccountsMenuStatus$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$7TAte2OMEHREHmc4oRYVl1juisI(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$prepareAccountsMenuStatus$8(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8qZoLEyem20kpgbD1gDMkin-moE(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$getDPInfo$15(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EnNKV9Ftvk6JX1tJ5hRUy0vw8R8(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$getDPInfo$12(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FBarKnr1sePYzMofiAFdcqXqi14(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$getDPInfo$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$FmG3erURa6tAp2U3uXNmMX3m04Y(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$init$2(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G0Wcwpk1GOEvQG5C50sMVyBP4Jg(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$setAccountsMenuStatus$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$LF2gu4sFPJE7MX-7uZekGzoNsXI(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$prepareForScanning$17(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QCrEj6QbCHR6puZ3D2VBhCzRRwY(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$setupStatus$16(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_pkzy4fXqdRwpjifV81izh75sbY(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$new$0(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$esMdGC8e-FfxigAnyWGv9xRYrM4(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$new$1()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k9dlLuNH631tjBpr-QVBSnHM3tc(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$setAccountsMenuStatus$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$nIsEaDaz2S7ZWe4L6I4cyALTLqU(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$getDPInfo$14(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rTW6osJCmvtHZII3gh7U4Vd5P7I(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$init$3(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vPQ0KylTEi1rcgmN8slyaIXN1tA(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$refreshAllMenuItemsStatusWithVi$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcYTGPl6Vd4tBZHrgfJXcpK1faQ(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->lambda$refreshAllMenuItemsStatus$5(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDPMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGPSuMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGPSuMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoogleAccountMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAppSecuritySupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAppSecuritySupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsDPSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFMMEnabled(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFMMEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGPPSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPPSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSamsungAccountSignedIn(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSamsungAccountSignedIn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSamsungAccountSupported(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSamsungAccountSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScreenLockEnabled(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsScreenLockEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSecurityUpdateElapsed(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateElapsed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSecurityUpdateInstalled(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateInstalled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMenuItems(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverallStatusMap(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecCardsPreference(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecCardsPreference:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecStatusPreference(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusCards(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusExpendableMenus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatesMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mUpdatesMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprepareAccountsMenuStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->prepareAccountsMenuStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupStatus(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setupStatus(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 754
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$7;

    sget v1, Lcom/android/settings/R$xml;->sec_security_and_privacy_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$7;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsLockScreenHiddenByMDM:Z

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    .line 124
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->DO_NOTHING_COMMAND:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

    .line 128
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mScanStateProvider:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    .line 132
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$1;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mChildStateChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private closeChildMenuItems()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private createSubToParentMenuMap()V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_screen_lock_type"

    const-string v2, "key_lock_screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_fingerprints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_samsung_acc_checkup"

    const-string v2, "key_accounts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_google_acc_checkup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_allow_this_phone_to_be_found"

    const-string v2, "key_find_my_mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_offline_finding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_device_protection"

    const-string v2, "key_app_security"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_google_play_protect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v1, "key_security_update"

    const-string v2, "key_updates"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    const-string v0, "key_google_play_system_update"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private expandParentMenuForSearch()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHighlightMenuKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHighlightMenuKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method private getDPInfo()V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getDeviceProtectionSecurityInfoAsync(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private init()V
    .locals 11

    .line 190
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->initMenuItems()V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->initFeatureSupportData(Landroid/content/Context;)V

    const/16 v0, 0x10

    .line 195
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsLockScreenHiddenByMDM:Z

    :cond_0
    const-string v0, "security_dashboard_status"

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    .line 200
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setmOnScanClickListener(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setKey(Ljava/lang/String;)V

    const-string v0, "security_dashboard_cards"

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecCardsPreference:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    .line 204
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->setRefreshCardView(Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;)V

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecCardsPreference:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->setKey(Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFingerPrintSupported:Z

    const-string v1, "key_fingerprints"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPPSupported:Z

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v3, "key_google_play_protect"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 219
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFMMSupported:Z

    const-string v3, "key_offline_finding"

    const-string v4, "key_find_my_mobile"

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->isFMMMetaDataExists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget v5, Lcom/android/settings/R$string;->smartthings_find_title:I

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setTitle(I)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget v5, Lcom/android/settings/R$drawable;->ic_security_smartthingsfind:I

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setIcon(I)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    const-string v5, "ic_security_status_smartthingsfind"

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setScanIconDrawableName(Ljava/lang/String;)V

    .line 225
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsOfflineFindingSupported:Z

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setOnExpandListener(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;)V

    goto :goto_0

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 233
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateSupported:Z

    const-string v4, "key_security_update"

    if-nez v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 237
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPSuSupported:Z

    const-string v5, "key_google_play_system_update"

    if-nez v0, :cond_7

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 241
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsUpdatesSupported:Z

    const-string v6, "key_updates"

    if-nez v0, :cond_8

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 245
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSamsungAccountSupported:Z

    const-string v7, "key_samsung_acc_checkup"

    if-nez v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 249
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAccountsMenuSupported:Z

    const-string v8, "key_accounts"

    if-nez v0, :cond_a

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 253
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    new-instance v9, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-interface {v0, v9}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 260
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v9, "privacy_settings"

    .line 262
    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    sget-object v10, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->ARROW:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 263
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 267
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    if-eqz v0, :cond_b

    .line 269
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 270
    sget v9, Lcom/android/settings/R$string;->samsung_account_checkup_title_jpn:I

    invoke-virtual {v0, v9}, Landroidx/preference/Preference;->setTitle(I)V

    .line 275
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsLockScreenHiddenByMDM:Z

    const-string v9, "key_lock_screen"

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsMDMEnabled:Z

    if-eqz v0, :cond_d

    .line 276
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 280
    :cond_d
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsMDMEnabled:Z

    if-nez v0, :cond_e

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setOnExpandListener(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;)V

    .line 284
    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAccountsMenuSupported:Z

    if-eqz v0, :cond_f

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setOnExpandListener(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;)V

    .line 287
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsUpdatesSupported:Z

    if-eqz v0, :cond_10

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setOnExpandListener(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;)V

    .line 291
    :cond_10
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 292
    :cond_11
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    .line 296
    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v6, "key_screen_lock_type"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 297
    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 298
    iget-boolean v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFingerPrintSupported:Z

    if-eqz v2, :cond_12

    .line 299
    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 304
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$2;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_google_acc_checkup"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$3;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_device_protection"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$4;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$5;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$6;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 385
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCommandFactory:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;

    return-void
.end method

.method private initFeatureSupportData(Landroid/content/Context;)V
    .locals 3

    .line 389
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsChinaModel:Z

    .line 392
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isFingerPrintSupportedModel(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFingerPrintSupported:Z

    .line 395
    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsChinaModel:Z

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGoogleServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGoogleAccountSupported:Z

    .line 396
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSamsungAccountSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSamsungAccountSupported:Z

    .line 397
    iget-boolean v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGoogleAccountSupported:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v1

    :goto_3
    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAccountsMenuSupported:Z

    .line 400
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isFMMSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFMMSupported:Z

    if-eqz p1, :cond_4

    .line 402
    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAllowPhoneToBeFoundSupported:Z

    .line 403
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isOfflineFindingSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsOfflineFindingSupported:Z

    .line 407
    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsChinaModel:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPPSupported:Z

    .line 410
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSecurityUpdateSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateSupported:Z

    .line 411
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGPSuSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPSuSupported:Z

    .line 412
    iget-boolean v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateSupported:Z

    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsUpdatesSupported:Z

    .line 413
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isMDMEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsMDMEnabled:Z

    return-void
.end method

.method private initMenuItems()V
    .locals 3

    .line 417
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_lock_screen"

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_screen_lock_type"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_fingerprints"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_accounts"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_samsung_acc_checkup"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_google_acc_checkup"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_find_my_mobile"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_allow_this_phone_to_be_found"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_offline_finding"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_app_security"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_device_protection"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_google_play_protect"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_updates"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_security_update"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_google_play_system_update"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$closeChildMenuItems$18(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    .line 1106
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1107
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->isShown()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1108
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1109
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSubToParentMenuMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1110
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setIsExpanded(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getDPInfo$12(Ljava/lang/Integer;)V
    .locals 5

    .line 709
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_device_protection"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsDeviceProtectionElapsed:Z

    iget-wide v3, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDPLastScannedTime:J

    .line 710
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v1, v2, v3, v4, p0}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getSummaryTextForDP(Landroid/content/Context;ZJI)Ljava/lang/String;

    move-result-object p0

    .line 709
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$getDPInfo$13()V
    .locals 1

    const/4 v0, 0x0

    .line 724
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setupStatus(Z)V

    return-void
.end method

.method private synthetic lambda$getDPInfo$14(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 705
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDPLastScannedTime:J

    .line 706
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLastScanTimeAsync: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDPLastScannedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecurityAndPrivacySettings"

    invoke-static {v0, p2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-wide v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDPLastScannedTime:J

    const/16 p2, 0x1e

    invoke-static {v0, v1, p2}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->checkIfDurationElapsed(JI)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsDeviceProtectionElapsed:Z

    .line 708
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsDeviceProtectionElapsed:Z

    invoke-static {p2, v0}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getStatusForDeviceProtectionMenu(IZ)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 712
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    const-string v1, "key_device_protection"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v1, "DP"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_TURN_ON_DP:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 715
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 717
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p1, p2, :cond_2

    .line 718
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    sget-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_DP_MALWARE_DETECTED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 719
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsDeviceProtectionElapsed:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_DP_SCAN_YOUR_PHONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 720
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->isScanning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 724
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private synthetic lambda$getDPInfo$15(Ljava/lang/Integer;)V
    .locals 4

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceProtectionSecurityInfoAsync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityAndPrivacySettings"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsDPSupported:Z

    .line 701
    iget-boolean v3, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPPSupported:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAppSecuritySupported:Z

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/lang/Integer;)V

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getLastScanTimeAsync(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroidx/core/util/Consumer;)V

    goto :goto_2

    .line 728
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v0, "key_device_protection"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 731
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAppSecuritySupported:Z

    const-string v0, "key_app_security"

    if-eqz p1, :cond_4

    .line 732
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setOnExpandListener(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;)V

    goto :goto_3

    .line 734
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$init$2(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 254
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setKey(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setOnBindListener(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnBindListener;)V

    .line 256
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mScanStateProvider:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setScanStateProvider(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;)V

    return-void
.end method

.method private synthetic lambda$init$3(Landroidx/preference/Preference;)Z
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->security_dashboard_retail_mode_toast:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$init$4(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x1

    .line 381
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->startOfflineFindingIntent(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$0(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$1()Z
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->isScanning()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$prepareAccountsMenuStatus$8(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 660
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setAccountsMenuStatus()V

    return-void
.end method

.method private static synthetic lambda$prepareForScanning$17(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 0

    .line 1093
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$refreshAllMenuItemsStatus$5(Ljava/lang/String;Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCommandFactory:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->getStatusCommand(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->DO_NOTHING_COMMAND:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

    .line 566
    invoke-interface {p0, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;->updateStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    return-void
.end method

.method private synthetic lambda$refreshAllMenuItemsStatusWithVi$6(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 593
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->refreshMenuItemsStatusWithVi(Ljava/util/List;I)V

    return-void
.end method

.method private synthetic lambda$refreshMenuItemsStatusWithVi$7(Ljava/util/List;I)V
    .locals 0

    add-int/lit8 p2, p2, 0x1

    .line 610
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->refreshMenuItemsStatusWithVi(Ljava/util/List;I)V

    return-void
.end method

.method private synthetic lambda$setAccountsMenuStatus$10()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_accounts"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$setAccountsMenuStatus$11()V
    .locals 1

    const/4 v0, 0x0

    .line 691
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setupStatus(Z)V

    return-void
.end method

.method private synthetic lambda$setAccountsMenuStatus$9()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_samsung_acc_checkup"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method private synthetic lambda$setupStatus$16(ILjava/lang/Object;)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setStatusCards(I)V

    return-void
.end method

.method private prepareAccountsMenuStatus()V
    .locals 3

    .line 655
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSamsungAccountSupported:Z

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    const-string v1, "com.osp.app.signin"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSamsungAccountSignedIn:Z

    .line 657
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne v0, v1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getStatusForSamsungAccountCheckupMenuAsync(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroidx/core/util/Consumer;)V

    goto :goto_0

    .line 664
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setAccountsMenuStatus()V

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    return-void
.end method

.method private prepareForScanning()V
    .locals 10

    .line 1092
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1097
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->values()[Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1098
    iget-object v5, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->saveStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1100
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->closeChildMenuItems()V

    .line 1101
    iget-object v4, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    sget-object v5, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V

    return-void
.end method

.method private refreshAllMenuItemsStatus()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 v0, 0x0

    .line 568
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setupStatus(Z)V

    return-void
.end method

.method private refreshAllMenuItemsStatusWithVi()V
    .locals 5

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 590
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    .line 591
    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->getScanCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->updateScanCategoryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 592
    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 593
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/util/List;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshMenuItemsStatusWithVi(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCommandFactory:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;

    .line 600
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 599
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->getStatusCommand(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->DO_NOTHING_COMMAND:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

    .line 600
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

    .line 601
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;->updateStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    .line 604
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    .line 608
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    .line 609
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->getScanCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->updateScanCategoryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 610
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;Ljava/util/List;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 613
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->refreshMenuItemsStatusWithVi(Ljava/util/List;I)V

    goto :goto_0

    .line 618
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setupStatus(Z)V

    :goto_0
    return-void
.end method

.method private setAccountsMenuStatus()V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getStatusForAccountsMenu(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 673
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "key_samsung_acc_checkup"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "SA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 677
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne v0, v1, :cond_2

    .line 681
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSamsungAccountSignedIn:Z

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SAMSUNG_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SAMSUNG_ACCOUNT_CHECK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->isScanning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private setStatusCards(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecCardsPreference:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->setCardsData(Ljava/util/Set;)V

    .line 1088
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecCardsPreference:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private setStatusPreference(IIILandroidx/core/util/Consumer;)V
    .locals 7

    add-int v1, p2, p3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-lez p3, :cond_2

    if-lez p1, :cond_2

    .line 1075
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v3, 0x0

    move v4, p3

    move v5, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    if-lez p1, :cond_3

    .line 1077
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move v3, p2

    move v4, p3

    move v5, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V

    goto :goto_0

    .line 1079
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V

    .line 1081
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    invoke-static {p2, p3, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->saveOverallStatusToSA(IILjava/util/Map;)V

    return-void
.end method

.method private setupStatus(Z)V
    .locals 6

    .line 1000
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->saveLastScanTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsScreenLockEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    const-string v2, "key_screen_lock_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsScreenLockEnabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_1
    const-string v2, "SL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateSupported:Z

    if-eqz v0, :cond_4

    .line 1004
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateInstalled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateElapsed:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_2
    const-string v2, "key_security_update"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateInstalled:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateElapsed:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_3
    const-string v2, "SU"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPSuSupported:Z

    if-eqz v0, :cond_5

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGPSuMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "key_google_play_system_update"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGPSuMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "GPSU"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SET_SCREEN_LOCK_TYPE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsScreenLockEnabled:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsMDMEnabled:Z

    if-nez v0, :cond_6

    .line 1014
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPSuSupported:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GPSU_UPDATE_AVAILABLE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 1018
    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGPSuMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne v0, v2, :cond_7

    iget-wide v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGPSuElapsedDays:J

    const-wide/16 v4, 0xb4

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    .line 1020
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFMMSupported:Z

    if-eqz v0, :cond_b

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFMMEnabled:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_4
    const-string v2, "key_allow_this_phone_to_be_found"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFMMEnabled:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_5

    :cond_a
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_5
    const-string v2, "FMM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFMMEnabled:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_ALLOW_PHONE_TO_BE_FOUND:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateSupported:Z

    if-eqz v0, :cond_d

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SECURITY_UPDATE_AVAILABLE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateInstalled:Z

    if-nez v0, :cond_c

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1035
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SECURITY_UPDATE_DURATION_ELAPSED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateElapsed:Z

    if-eqz v0, :cond_d

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_d
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGoogleAccountSupported:Z

    if-eqz v0, :cond_e

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "key_google_acc_checkup"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mOverallStatusMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const-string v2, "GA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne v0, v1, :cond_e

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GOOGLE_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 1053
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusExpendableMenus:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_f
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 1054
    sget-object v5, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    add-int/lit8 v2, v2, 0x1

    .line 1057
    :cond_10
    sget-object v5, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    if-eqz p1, :cond_12

    .line 1063
    new-instance p1, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;I)V

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setStatusPreference(IIILandroidx/core/util/Consumer;)V

    goto :goto_8

    :cond_12
    const/4 p1, 0x0

    .line 1067
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setStatusPreference(IIILandroidx/core/util/Consumer;)V

    .line 1068
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setStatusCards(I)V

    :goto_8
    return-void
.end method

.method private updateSecurityFeaturesStatus()V
    .locals 5

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isScreenLockEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsScreenLockEnabled:Z

    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    const-string v1, "com.google"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGoogleAccountSignedIn:Z

    .line 446
    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGoogleAccountSupported:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 447
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGoogleAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 448
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSamsungAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isFindMyMobileEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFMMEnabled:Z

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->getDPInfo()V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getDaysCountSinceLastGPSystemUpdate(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGPSuElapsedDays:J

    .line 458
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSecurityUpdateInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateInstalled:Z

    .line 459
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getDaysCountSinceLastSecurityUpdate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isSecurityUpdateElapsed(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateElapsed:Z

    .line 460
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getStatusforGPSuMenu(Landroid/content/Context;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGPSuMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 461
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateInstalled:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateElapsed:Z

    iget-wide v3, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mGPSuElapsedDays:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getStatusForUpdatesMenu(Landroid/content/Context;ZZJ)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mUpdatesMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 463
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateSupported:Z

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_security_update"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPSuSupported:Z

    const-string v1, "key_google_play_system_update"

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getGPSystemUpdateSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 469
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    .line 624
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 625
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 626
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "key_find_my_mobile"

    .line 630
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "security_status_security_patch_level"

    .line 631
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "security_status_package_verifier"

    .line 632
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "security_status_partial_system_updates"

    .line 633
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "security_status_find_device"

    .line 637
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 640
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecurityAndPrivacySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 151
    sget p0, Lcom/android/settings/R$xml;->sec_security_and_privacy_settings:I

    return p0
.end method

.method makeTalkback(I)V
    .locals 3

    const/16 v0, 0x4000

    .line 572
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 575
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    .line 578
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalStateException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecurityAndPrivacySettings"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onBind(ZLjava/lang/String;)V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mSecStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCommandFactory:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommandFactory;->getStatusCommand(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->DO_NOTHING_COMMAND:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;

    .line 557
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$StatusCommand;->updateStatus(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 559
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ":settings:fragment_args_key"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHighlightMenuKey:Ljava/lang/String;

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->init()V

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->createSubToParentMenuMap()V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHighlightMenuKey:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->expandParentMenuForSearch()V

    .line 179
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mHandler:Landroid/os/Handler;

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public onExpand(ZLjava/lang/String;)V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 489
    sget v0, Lcom/android/settings/R$string;->security_dashboard_talkback_menu_expand:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->security_dashboard_talkback_menu_close:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->makeTalkback(I)V

    :cond_1
    const-string v0, "key_lock_screen"

    .line 491
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 492
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_screen_lock_type"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 493
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    .line 494
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsFingerPrintSupported:Z

    if-eqz p2, :cond_2

    .line 495
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_fingerprints"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 497
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "key_accounts"

    .line 498
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 499
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSamsungAccountSupported:Z

    if-eqz p2, :cond_4

    .line 500
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_samsung_acc_checkup"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 501
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    .line 504
    :cond_4
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGoogleAccountSupported:Z

    if-eqz p2, :cond_5

    .line 505
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_google_acc_checkup"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 509
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    goto/16 :goto_2

    .line 511
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mAccountMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eq p0, v0, :cond_7

    goto :goto_1

    :cond_7
    move v2, p2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "key_find_my_mobile"

    .line 513
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 514
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAllowPhoneToBeFoundSupported:Z

    if-eqz p2, :cond_9

    .line 515
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_allow_this_phone_to_be_found"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 516
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    .line 518
    :cond_9
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsOfflineFindingSupported:Z

    if-eqz p2, :cond_a

    .line 519
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_offline_finding"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 520
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    .line 522
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "key_app_security"

    .line 523
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 524
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPPSupported:Z

    if-eqz p2, :cond_c

    .line 525
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_google_play_protect"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 527
    :cond_c
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsDPSupported:Z

    if-eqz p2, :cond_d

    .line 528
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_device_protection"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 529
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    .line 532
    :cond_d
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsAppSecuritySupported:Z

    if-eqz p2, :cond_11

    .line 533
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    goto :goto_2

    :cond_e
    const-string v0, "key_updates"

    .line 535
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 536
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsSecurityUpdateSupported:Z

    if-eqz p2, :cond_f

    .line 537
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_security_update"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 540
    :cond_f
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsGPSuSupported:Z

    if-eqz p2, :cond_10

    .line 541
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    const-string v1, "key_google_play_system_update"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 544
    :cond_10
    iget-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mIsUpdatesSupported:Z

    if-eqz p2, :cond_11

    .line 545
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setShowStatusIcon(Z)V

    :cond_11
    :goto_2
    return-void
.end method

.method public onNotNowClicked(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)V
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->saveStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Z)V

    .line 834
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->saveDismissButtonClickToSALogging(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)V

    .line 835
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 741
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnChildAttachStateChangeListeners()V

    .line 742
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 645
    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    .line 646
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 647
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mChildStateChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 648
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mStatusCards:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 649
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->updateSecurityFeaturesStatus()V

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->refreshAllMenuItemsStatus()V

    const/16 p0, 0x2348

    .line 651
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method public onScanClick(Ljava/lang/String;)V
    .locals 1

    const p1, 0xdaea

    .line 747
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    .line 748
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->savePlayAnimation(Landroid/content/Context;Z)V

    .line 749
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->prepareForScanning()V

    .line 750
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->updateSecurityFeaturesStatus()V

    .line 751
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->refreshAllMenuItemsStatusWithVi()V

    return-void
.end method

.method public refreshCardView(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    .line 827
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->setupStatus(Z)V

    :cond_0
    return-void
.end method

.method public startOfflineFindingIntent(Z)V
    .locals 3

    .line 1121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.FIND_MY_MOBILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.fmm"

    .line 1122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "caller_name"

    const-string v2, "SecurityDashboard"

    .line 1123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offline_popup"

    .line 1124
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1126
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Offline Finding not found. Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecurityAndPrivacySettings"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
