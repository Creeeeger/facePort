.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "netpolicy"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getRestrictBackground()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NetworkPolicyManagerWrapper;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    return p0
.end method
